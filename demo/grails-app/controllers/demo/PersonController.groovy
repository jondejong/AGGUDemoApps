package demo

import grails.rest.RestfulController

class PersonController extends RestfulController{

    static responseFormats = ['json']

    PersonController () {
        super(Person)
    }

    def index(Integer max) {
        def people = []
        def search = params.firstName + '%'
        if(params.firstName) {
            people = Person.where {
                firstName =~ search
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
