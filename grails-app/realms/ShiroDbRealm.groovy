import org.apache.shiro.authc.AccountException
import org.apache.shiro.authc.IncorrectCredentialsException
import org.apache.shiro.authc.UnknownAccountException
import org.apache.shiro.authc.SimpleAccount
import org.apache.shiro.authz.permission.WildcardPermission
import com.lucasian.cheques.*

class ShiroDbRealm {
    static authTokenClass = org.apache.shiro.authc.UsernamePasswordToken

    def credentialMatcher
    def shiroPermissionResolver

    def authenticate(authToken) {
        log.info "Attempting to authenticate ${authToken.username} in DB realm..."
        def username = authToken.username

        // Null username is invalid
        if (username == null) {
            throw new AccountException("Null usernames are not allowed by this realm.")
        }

        // Get the user with the given username. If the user is not
        // found, then they don't have an account and we throw an
        // exception.
        def user = ShiroUser.findByUsername(username)
        if (!user) {
            throw new UnknownAccountException("No account found for user [${username}]")
        }

        log.info "Found user '${user.username}' in DB"
        user.rol.name

        // Now check the user's password against the hashed value stored
        // in the database.
        UserInfo userInfo
        if(user.rol.name == "empleado"){
               def empleado = Empleado.findByUsername(user.username)
               println("ESTA ENTRANDO UN EMPLEADO de la tienda:"+empleado.sucursal.clave)
               userInfo = new UserInfo(username: user.username, rol: user.rol.name, tienda: empleado.sucursal.clave );
        }else{
              userInfo = new UserInfo(username: user.username, rol: user.rol.name );              
        }        
        def account = new SimpleAccount(userInfo, user.passwordHash, "ShiroDbRealm")
        if (!credentialMatcher.doCredentialsMatch(authToken, account)) {
            log.info "Invalid password (DB realm)"
            throw new IncorrectCredentialsException("Invalid password for user '${username}'")
        }
        return account
    }

    def hasRole(principal, roleName) {
        def roles = ShiroUser.withCriteria {
            rol {
                eq("name", roleName)
            }
            eq("username", principal.toString())
        }

        return roles.size() > 0
    }

    def hasAllRoles(principal, roles) {
        def r = ShiroUser.withCriteria {
            roles {
                'in'("name", roles)
            }
            eq("username", principal.toString())
        }

        return r.size() == roles.size()
    }

    def isPermitted(principal, requiredPermission) {
        // Does the user have the given permission directly associated
        // with himself?
        //
        // First find all the permissions that the user has that match
        // the required permission's type and project code.
        def user = ShiroUser.findByUsername(principal.toString())
        def permissions = user.rol.permissions

        // Try each of the permissions found and see whether any of
        // them confer the required permission.
        def retval = permissions?.find { permString ->
            // Create a real permission instance from the database
            // permission.
            def perm = shiroPermissionResolver.resolvePermission(permString)

            // Now check whether this permission implies the required
            // one.
            if (perm.implies(requiredPermission)) {
                // User has the permission!
                return true
            }
            else {
                return false
            }
        }

        if (retval != null) {
            // Found a matching permission!
            return true
        }

        // If not, does he gain it through a role?
        //
        // Get the permissions from the roles that the user does have.
        def results = ShiroUser.executeQuery("select distinct p from ShiroUser as user join user.rol as role join role.permissions as p where user.username = '$principal'")

        // There may be some duplicate entries in the results, but
        // at this stage it is not worth trying to remove them. Now,
        // create a real permission from each result and check it
        // against the required one.
        retval = results.find { permString ->
            // Create a real permission instance from the database
            // permission.
            def perm = shiroPermissionResolver.resolvePermission(permString)

            // Now check whether this permission implies the required
            // one.
            if (perm.implies(requiredPermission)) {
                // User has the permission!
                return true
            }
            else {
                return false
            }
        }

        if (retval != null) {
            // Found a matching permission!
            return true
        }
        else {
            return false
        }
    }
}
