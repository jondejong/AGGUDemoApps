package demo

import grails.rest.Resource

//@Resource(uri='/person', formats = ['json'])
class Person {

    String firstName
    String lastName

    Integer age

    static constraints = {
    }
}
