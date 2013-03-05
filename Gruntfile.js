module.exports = function(grunt) {
  
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    cssmin: {
      compress: {
        files: {
          "dist/style.min.css": ["src/grid.css", "src/style.css", "src/normalize.css"]
        }
      }
    }
  });
  
  grunt.loadNpmTasks('grunt-contrib-cssmin');
  grunt.registerTask('default', ['cssmin']);
};
