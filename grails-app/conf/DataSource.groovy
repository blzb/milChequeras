dataSource {
    pooled = true

    
    //username = "sa"
    //password = ""
    logSql = true
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
//    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
}

// environment specific settings
environments {
    development {
        dataSource {
            // one of 'create', 'create-drop', 'update', 'validate', ''
            dbCreate = "create-drop"
            url = "jdbc:h2:mem:devDb;MVCC=TRUE;LOCK_TIMEOUT=10000"             
            driverClassName = "org.h2.Driver"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000"
        }
    }
    production {
        dataSource {
            dbCreate = "create-drop"
            username = "milchequeras"
            password = "milchequeras"
            driverClassName = "com.mysql.jdbc.Driver"
            url = "jdbc:mysql://localhost/milchequeras"
        }
    }
}
