'use strict'

angular.module('frontendApp')
  .service 'Personservice', ($http)->
    people = {}
    getPeople = () ->
        promise = $http.get("http://localhost:8080/demo/person").then (response) ->
            people = response.data
        promise
    {
        people: people
        getPeople: getPeople

        savePerson: (person) ->
            promise = $http.post("http://localhost:8080/demo/person", person)
            promise
    }

