app = undefined
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
app.directive 'hcChart', ->
  {
    restrict: 'E'
    template: '<div></div>'
    scope:
      title: '@'
      data: '='
    link: (scope, element) ->
      chart = Highcharts.chart(element[0],
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
        yAxis:
          title: text: ''
          labels: formatter: ->
            ''
        tooltip: pointFormat: '{series.name} gained <b>{point.y:,.0f}</b><br/> in {point.x}'
        series: [ {
          name: scope.title
          data: scope.data
        } ])
      $(window).resize ->
        width = $(window).width()
        if width < 800
          chart.setSize 300, 400
        return
      return

  }
#@TODO:  add style for area charts
app.directive 'hcMap', ($http) ->
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
          height: 630
          borderColor: '#fffff'
        title: text: ' '
        legend: enabled: false
        mapNavigation:
          enabled: true
          buttonOptions: verticalAlign: 'center'
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
            data: [
              {
                'code3': 'ABW'
                'z': 1000
                'code': 'AW'
              }
              {
                'code3': 'AFG'
                'z': 34656
                'code': 'AF'
              }
              {
                'code3': 'AGO'
                'z': 28813
                'code': 'AO'
              }
              {
                'code3': 'ALB'
                'z': 2876
                'code': 'AL'
              }
              {
                'code3': 'BLZ'
                'z': 367
                'code': 'BZ'
              }
              {
                'code3': 'BMU'
                'z': 65
                'code': 'BM'
              }
              {
                'code3': 'BOL'
                'z': 10888
                'code': 'BO'
              }
            ]
            minSize: 4
            maxSize: '12%'
            tooltip: pointFormat: '{point.properties.hc-a2}: {point.z} thousands'
          }
        ]
      return

  }
app.directive 'hcLinear', ->
  {
    restrict: 'E'
    template: '<div></div>'
    link: (scope, element) ->
      Highcharts.chart element[0],
        chart:
          renderTo: 'chart'
          width: 100
          heigth: 50
        title: text: ' '
        yAxis:
          labels: enabled: false
          visible: false
        xAxis:
          categories: [
            'Jan'
            'Feb'
            'Mar'
            'Apr'
            'May'
            'Jun'
            'Jul'
            'Aug'
            'Sep'
            'Oct'
            'Nov'
            'Dec'
          ]
          labels: enabled: false
        plotOptions: series: lineWidth: 8
        legend: title: ' '
        series: [ { data: [
          29.9
          71.5
          106.4
          129.2
          144.0
          176.0
          135.6
          148.5
          216.4
          194.1
          95.6
          54.4
        ] } ]
      return

  }
