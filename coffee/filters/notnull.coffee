app = undefined
app = angular.module('app')
app.filter 'notnull', ->
  (text) ->
    if text == null
      return String(text).replace('null', '--')
    return
# @TODO: DOESNT WORK NEED TO BE FIXED
