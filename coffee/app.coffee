###*
* app Module
*
* Description: Main module for the app
###

app = angular.module('app', [])
app.controller 'MainCtrl', ($scope, $filter, $http) ->
  $scope.card1 =
    name: 'Output'
    sub1: '# Incidents'
    subValue1: '82'
    sub2: '# Test buys'
    subValue2: '82'
  $scope.card2 =
    name: 'Recovery'
    sub1: 'Open'
    subValue1: '340000'
    sub2: 'Closed'
    subValue2: '40000'
  $scope.card3 =
    name: 'Prevention'
    sub1: 'Open'
    subValue1: '832000'
    sub2: 'Closed'
    subValue2: '2000'
  $scope.pieData = [
    {
      name: 'Microsoft Internet Explorer'
      y: 56.33
    }
    {
      name: 'Chrome'
      y: 24.03
    }
    {
      name: 'Firefox'
      y: 10.38
    }
    {
      name: 'Safari'
      y: 4.77
    }
    {
      name: 'Opera'
      y: 0.91
    }
    {
      name: 'Proprietary or Undetectable'
      y: 0.2
    }
  ]
  $scope.chartOptions = [
    299
    715
    1064
    1292
    1440
    1760
    1356
    1485
    2164
    1941
    956
    544
  ]
  $scope.mapData = []
  $scope.datos = []
  $scope.limit = 4
  $http.get('data/mapData.json').success((data) ->
    $scope.mapData = data
    console.log 'charged'
    console.log data
    return
  ).error (data) ->
    console.log 'ERROR'
    return
  $http.get('data/brands.json').success((data) ->
    $scope.datos = data
    return
  ).error (err) ->
    console.log 'ERROR'
    return

  $scope.showMore = ->
    $scope.limit = 50
    return

  $scope.showLess = ->
    $scope.limit = 4
    return

  # @TODO: Create function to filter currency
  #@TODO: Create a Service or function to import data from jsons 
  return
