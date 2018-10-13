app = angular.module('app')
app.directive 'hcPieChart', ->
  {
    restrict: 'E'
    template: '<div></div>'
    scope:
      title: '@'
      data: '='
    link: (scope, element) ->
      Highcharts.chart element[0],
        chart:
          type: 'pie'
          height: '50%'
          width: 400
        title: text: scope.title
        plotOptions: pie:
          allowPointSelect: true
          cursor: 'pointer'
          dataLabels:
            enabled: true
            format: '<b>{point.name}</b>: {point.percentage:.1f} %'
        series: [ { data: scope.data } ]
      return

  }
#@TODO: Add responsive in a good way for pie charts
app.directive 'hcChart', ->
  {
    restrict: 'E'
    template: '<div></div>'
    scope:
      title: '@'
      data: '='
    link: (scope, element) ->
      Highcharts.chart element[0],
        chart:
          type: 'area'
          plotBackgroundColor: '#ff6666'
          height: '50%'
          width: 400
        title: text: scope.title
        xAxis:
          allowDecimals: false
          labels: formatter: ->
            ''
            # clean, unformatted number for year
        yAxis:
          title: text: ''
          labels: formatter: ->
            ''
        tooltip: pointFormat: '{series.name} gained <b>{point.y:,.0f}</b><br/> in {point.x}'
        series: [ {
          name: scope.title
          data: scope.data
        } ]
      return

  }
#@TODO: add responsive too and add style for area charts
app.directive 'hcMap', ->
  {
    restrict: 'E'
    template: '<div></div>'
    scope: datos: '='
    link: (scope, element) ->
      Highcharts.mapChart element[0],
        chart:
          borderWidth: 1
          map: 'custom/world'
          width: 870
          height: 400
          borderColor: '#fffff'
        title: text: ' '
        legend: enabled: false
        mapNavigation:
          enabled: true
          buttonOptions: verticalAlign: 'bottom'
        series: [
          {
            name: 'Countries'
            color: '#E0E0E0'
            enableMouseTracking: false
          }
          {
            type: 'mapbubble'
            name: 'Population 2016'
            joinBy: [
              'iso-a3'
              'code3'
            ]
            data: scope.datos
            minSize: 4
            maxSize: '12%'
            tooltip: pointFormat: '{point.properties.hc-a2}: {point.z} thousands'
          }
        ]
      return

  }
#@TODO: Fix the data  and add responsive for maps
