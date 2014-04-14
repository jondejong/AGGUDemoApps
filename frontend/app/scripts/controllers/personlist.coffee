'use strict'

angular.module('frontendApp').controller 'PersonlistCtrl', ($scope, $http, people, Personservice) ->
    $scope.addingNew = false
    $scope.newPerson = {}
    $scope.people = people

    $scope.addPerson = ()->
        Personservice.savePerson($scope.newPerson).then () ->
            Personservice.getPeople().then (people) ->
                $scope.people = people

        $scope.newPerson = {}
        $scope.addingNew = false






