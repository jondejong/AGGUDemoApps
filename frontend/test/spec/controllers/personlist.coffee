'use strict'

describe 'Controller: PersonlistCtrl', ->

  # load the controller's module
  beforeEach module 'frontendApp'

  PersonlistCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PersonlistCtrl = $controller 'PersonlistCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
