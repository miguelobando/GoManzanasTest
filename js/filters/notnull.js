var app;

app = angular.module('app');

app.filter("notnull",function(){
	return function(text){
		if (text === null)
			return String(text).replace('null','--');
	}

});

// @TODO: DOESNT WORK NEED TO BE FIXED