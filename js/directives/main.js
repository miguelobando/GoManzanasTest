var app;

app = angular.module('app');

app.directive('header', function() {
  return {
    restrict: 'E',
    templateUrl: 'templates/header.html'
  };
});

app.directive('card1', function() {
  return {
    restrict: 'E',
    templateUrl: 'templates/card.html',
    scope: {
      datos: '='
    }
  };
});

app.directive('tableProducts', function() {
  return {
    restrict: 'E',
    templateUrl: 'templates/tableProducts.html'
  };
});
