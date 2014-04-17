'use strict'

describe 'Controller: PersonlistCtrl', ->

  # load the controller's module
  beforeEach module 'frontendApp'

  PersonlistCtrl = {}
  scope = {}
  getPeopleDefer = {}
  $rootScope = {}
  servicePeople = [
    {
        firstName: 'foundFirst',
        lastName: 'foundLast',
        age: 42
    },
    {
        firstName: 'foundFirst',
        lastName: 'foundLast',
        age: 42
    }
  ]

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, _$rootScope_, $q) ->
    $rootScope = _$rootScope_
    scope = $rootScope.$new()
    people = [
        {
            firstName: 'testFirst',
            lastName: 'testLast',
            age: 42
        }
    ]

    getPeopleDefer = $q.defer()

    Personservice = {
        getPeople: ()->
            console.log("calling get people")
            getPeopleDefer.promise
    }

    PersonlistCtrl = $controller 'PersonlistCtrl', {
      $scope: scope, people: people, Personservice: Personservice
    }

  it 'should attach a newPerson scope', ->
    expect(scope.newPerson).toNotBe(undefined)

  it 'should set addingNew to false', ->
    expect(scope.addingNew).toBe(false)

  it 'should set people on scope', ->
    expect(scope.people.length).toBe(1)
    expect(scope.people[0].firstName).toBe('testFirst')
    expect(scope.people[0].lastName).toBe('testLast')
    expect(scope.people[0].age).toBe(42)

  it 'should get new people when search cleared', ->
    console.log("testing d:", getPeopleDefer)
    scope.clearSearch()

#    Resolve our promise
    getPeopleDefer.resolve(servicePeople)

#    Let Angular know to process all the then calls
    $rootScope.$apply()
    expect(scope.people.length).toBe(2)


