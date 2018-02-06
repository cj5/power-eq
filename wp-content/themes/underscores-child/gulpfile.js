var gulp = require('gulp');
var browserSync = require('browser-sync');
var sass = require('gulp-sass');

gulp.task('browser-sync', function() {
  var files = [
    './style.css',
    './*.php',
    './js/scripts.js'
  ];

  browserSync.init(files, {
    proxy: 'http://localhost:8888/'
  });
});

gulp.task('sass', function() {
  return gulp.src('sass/*.scss')
    .pipe(sass({
      'outputStyle': 'compressed'
    }))
    .pipe(gulp.dest('./'))
    .pipe(browserSync.stream());
});

gulp.task('default', ['sass', 'browser-sync'], function() {
  gulp.watch('sass/**/*.scss', ['sass']);
})