var gulp = require('gulp');
var coffee = require('gulp-coffee');

gulp.task('coffee-main', function() {
  gulp.src('./coffee/*.coffee')
    .pipe(coffee({bare: true}))
    .pipe(gulp.dest('./public/js'));
});

gulp.task('coffee-directives',function(){
	gulp.src('./coffee/directives/*.coffee')
	.pipe(coffee({bare:true}))
	.pipe(gulp.dest('./js/directives'))
});

gulp.task('coffee-services',function(){
	gulp.src('./coffe/directives/*.coffee')
	.pipe(coffe({bare:true}))
	.pipe(gulp.dest('./js/services'))
});





gulp.task('watch', function() {
   gulp.watch(['./coffee/**/*.coffee'], ['coffee']);
});

gulp.task('default', ['coffee-main','coffee-directives','watch'], function() {});