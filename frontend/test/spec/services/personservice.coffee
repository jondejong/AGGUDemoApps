'use strict'

describe 'Service: Personservice', ->

  # load the service's module
  beforeEach module 'frontendApp'

  # instantiate service
  Personservice = {}
  beforeEach inject (_Personservice_) ->
    Personservice = _Personservice_

  it 'should do something', ->
    expect(!!Personservice).toBe true
