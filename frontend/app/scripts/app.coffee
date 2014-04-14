'use strict'

angular
  .module('frontendApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute'
  ])
  .config ($routeProvider) ->
    $routeProvider
      .when '/personList',
        templateUrl: 'views/personlist.html'
        controller: 'PersonlistCtrl'
        resolve: {
            people: (Personservice) -> Personservice.getPeople()
        }
      .otherwise
        redirectTo: '/personList'

