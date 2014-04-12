'use strict'

angular.module('frontendApp').controller 'PersonlistCtrl', ($scope, $http) ->
    $scope.addingNew = false
    $scope.newPerson = {}

    $http.get("http://localhost:8080/demo/person").then (response) ->
        console.log("back with ", response)
        $scope.people = response.data

    $scope.addPerson = ()->
        $http.post('http://localhost:8080/demo/person', $scope.newPerson).success () ->
            $http.get("http://localhost:8080/demo/person").then (response) ->
                $scope.people = response.data
                $scope.newPerson = {}
                $scope.addingNew = false





