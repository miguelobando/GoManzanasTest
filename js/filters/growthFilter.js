var app; 
app = angular.module("app");

app.filter('growthFilter',function(){
	return function(text){
		if (text < 0){
			return text.style.color = "#ff0000" ;
		}
	}
});

//@DOESNT WORK NEEDS TO BE FIXED