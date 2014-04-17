'use strict'

angular.module('frontendApp').controller 'PersonlistCtrl', ($scope, $http, people, Personservice) ->
    $scope.addingNew = false
    $scope.newPerson = {}
    $scope.people = people
    $scope.firstNameSearch = ''

    $scope.addPerson = ()->
        Personservice.savePerson($scope.newPerson).then () ->
            Personservice.getPeople().then (data) ->
                $scope.people = data

        $scope.newPerson = {}
        $scope.addingNew = false

    $scope.search = ()->
        Personservice.search($scope.firstNameSearch).then (data) ->
            $scope.people = data

    $scope.cancelAddNew = ()->
        $scope.newPerson = {}
        $scope.addingNew = false

    $scope.clearSearch = ()->
        Personservice.getPeople().then (data) ->
            $scope.people = data
        $scope.firstNameSearch = ''

    $scope.update = (index)->
        Personservice.update($scope.people[index]).then () ->
            Personservice.getPeople().then (data) ->
                $scope.people = data









