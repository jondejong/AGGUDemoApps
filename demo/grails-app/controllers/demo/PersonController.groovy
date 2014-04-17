package demo

import grails.rest.RestfulController

class PersonController extends RestfulController{

    static responseFormats = ['json']

    PersonController () {
        super(Person)
    }

    def index(Integer max) {
        def people = []
        if(params.firstName) {
            people = Person.where {
                firstName =~ params.firstName
            }.findAll()
        } else {
            people = Person.list(params)
        }
        respond people
    }

    def show(Person person) {
        respond person
    }

}
