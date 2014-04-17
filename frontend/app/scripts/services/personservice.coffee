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

        search: (firstName) ->
            promise = $http.get("http://localhost:8080/demo/person?firstName="+firstName).then (response) ->
                console.log("Back from search", response)
                people = response.data
            promise

        update: (person) ->
            $http.put("http://localhost:8080/demo/person/" + person.id, person)
    }

