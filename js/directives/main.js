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
    templateUrl: 'templates/tableProducts.html',
  };
});

app.directive('tableBrands',function(){
    return {
      restrict:'E',
      templateUrl: 'templates/tableBrands.html'
    };
});


app.directive('tableEntities', function(){
  return {
    restrict: 'E',
    templateUrl: 'templates/tableEntities.html'
  };
});

app.directive('tableGrowth',function(){
  return {
    restrict: 'E',
    templateUrl: 'templates/tableGrowth.html'
  };
});

app.directive('tableComments',function(){
  return {
restrict: 'E',
templateUrl: 'templates/tableComments.html'
  };
});