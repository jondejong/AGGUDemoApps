'use strict'

angular.module('frontendApp').controller 'PersonlistCtrl', ($scope, $http) ->
    console.log("In PLC")
    $http.get("http://localhost:8080/demo/person").then (response) ->
        console.log("back with ", response)
        $scope.people = response.data


