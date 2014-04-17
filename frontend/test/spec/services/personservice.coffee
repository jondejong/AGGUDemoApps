'use strict'

describe 'Service: Personservice', ->

  # load the service's module
  beforeEach module 'frontendApp'

  # instantiate service
  Personservice = {}
  $httpBackend = {}
  beforeEach inject (_Personservice_, _$httpBackend_) ->
    Personservice = _Personservice_
    $httpBackend = _$httpBackend_

  it 'should get people', ->
      $httpBackend.expectGET("http://localhost:8080/demo/person").respond([{name: "Jon"}, {name: "Lori"}])
      promise = Personservice.getPeople()
      $httpBackend.flush()
      promise.then (response) ->
          people = response.data
          expect(people.length).toBe(2)




