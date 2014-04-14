'use strict'

describe 'Service: Person', ->

  # load the service's module
  beforeEach module 'frontendApp'

  # instantiate service
  Person = {}
  beforeEach inject (_Person_) ->
    Person = _Person_

  it 'should do something', ->
    expect(!!Person).toBe true
