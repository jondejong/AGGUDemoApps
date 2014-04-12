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
      .otherwise
        redirectTo: '/personList'

