'use strict'

describe 'Controller: PersonlistCtrl', ->

  # load the controller's module
  beforeEach module 'frontendApp'

  PersonlistCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    people = [
        {
            firstName: 'testFirst',
            lastName: 'testLast',
            age: 42
        }
    ]
    PersonlistCtrl = $controller 'PersonlistCtrl', {
      $scope: scope, people: people, Personservice: {}
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
