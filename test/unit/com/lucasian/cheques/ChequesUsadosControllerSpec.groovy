package com.lucasian.cheques



import grails.test.mixin.*
import spock.lang.*

@TestFor(ChequesUsadosController)
@Mock(ChequesUsados)
class ChequesUsadosControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.chequesUsadosInstanceList
        model.chequesUsadosInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.chequesUsadosInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        def chequesUsados = new ChequesUsados()
        chequesUsados.validate()
        controller.save(chequesUsados)

        then: "The create view is rendered again with the correct model"
        model.chequesUsadosInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        chequesUsados = new ChequesUsados(params)

        controller.save(chequesUsados)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/chequesUsados/show/1'
        controller.flash.message != null
        ChequesUsados.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def chequesUsados = new ChequesUsados(params)
        controller.show(chequesUsados)

        then: "A model is populated containing the domain instance"
        model.chequesUsadosInstance == chequesUsados
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def chequesUsados = new ChequesUsados(params)
        controller.edit(chequesUsados)

        then: "A model is populated containing the domain instance"
        model.chequesUsadosInstance == chequesUsados
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        controller.update(null)

        then: "A 404 error is returned"
        status == 404

        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def chequesUsados = new ChequesUsados()
        chequesUsados.validate()
        controller.update(chequesUsados)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.chequesUsadosInstance == chequesUsados

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        chequesUsados = new ChequesUsados(params).save(flush: true)
        controller.update(chequesUsados)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/chequesUsados/show/$chequesUsados.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        controller.delete(null)

        then: "A 404 is returned"
        status == 404

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def chequesUsados = new ChequesUsados(params).save(flush: true)

        then: "It exists"
        ChequesUsados.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(chequesUsados)

        then: "The instance is deleted"
        ChequesUsados.count() == 0
        response.redirectedUrl == '/chequesUsados/index'
        flash.message != null
    }
}
