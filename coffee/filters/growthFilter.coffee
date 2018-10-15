app = undefined
app = angular.module('app')
app.filter 'growthFilter', ->
  (text) ->
    if text < 0
      return text.style.color = '#ff0000'
    return
#@DOESNT WORK NEEDS TO BE FIXED