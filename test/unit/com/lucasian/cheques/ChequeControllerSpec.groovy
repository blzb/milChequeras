package com.lucasian.cheques



import grails.test.mixin.*
import spock.lang.*

@TestFor(ChequeController)
@Mock(Cheque)
class ChequeControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.chequeInstanceList
            model.chequeInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.chequeInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def cheque = new Cheque()
            cheque.validate()
            controller.save(cheque)

        then:"The create view is rendered again with the correct model"
            model.chequeInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            cheque = new Cheque(params)

            controller.save(cheque)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/cheque/show/1'
            controller.flash.message != null
            Cheque.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def cheque = new Cheque(params)
            controller.show(cheque)

        then:"A model is populated containing the domain instance"
            model.chequeInstance == cheque
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def cheque = new Cheque(params)
            controller.edit(cheque)

        then:"A model is populated containing the domain instance"
            model.chequeInstance == cheque
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def cheque = new Cheque()
            cheque.validate()
            controller.update(cheque)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.chequeInstance == cheque

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            cheque = new Cheque(params).save(flush: true)
            controller.update(cheque)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/cheque/show/$cheque.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            status == 404

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def cheque = new Cheque(params).save(flush: true)

        then:"It exists"
            Cheque.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(cheque)

        then:"The instance is deleted"
            Cheque.count() == 0
            response.redirectedUrl == '/cheque/index'
            flash.message != null
    }
}
