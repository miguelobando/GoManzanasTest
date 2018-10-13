app = angular.module('app')
app.directive 'header', ->
  {
    restrict: 'E'
    templateUrl: 'templates/header.html'
  }
app.directive 'card1', ->
  {
    restrict: 'E'
    templateUrl: 'templates/card.html'
    scope: datos: '='
  }
app.directive 'tableProducts', ->
  {
    restrict: 'E'
    templateUrl: 'templates/tableProducts.html'
  }
