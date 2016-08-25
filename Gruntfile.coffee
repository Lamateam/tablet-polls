# Grunt configuration updated to latest Grunt.  That means your minimum
# version necessary to run these tasks is Grunt 0.4.
#
# Please install this locally and install `grunt-cli` globally to run.
module.exports = (grunt) ->
  
  # Initialize the configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    tomcat:
      options:
        docBase: "web"
    clean: [ "tomcat/webapps", "dist" ]
    mkdir:
      dist:
        options:
          create: [ "dist", "dist/WEB-INF", "dist/WEB-INF/classes" ]
    copy:
      web:
        files: [
          { expand: true, cwd: 'web/', src: ['**/*.*'], dest: 'dist/' }
        ]
    war:
      root:
        options:
          war_dist_folder: "tomcat/webapps"
          war_name: "ROOT"
          webxml: ->
            '''
              <?xml version="1.0" encoding="UTF-8" ?>
              <web-app xmlns="http://xmlns.jcp.org/xml/ns/javaee" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-app_3_1.xsd" version="3.1">
              </web-app>
            '''
        files: [ { expand: true, cwd: 'dist', src: [ '**/*.*' ], dest: '' } ]
    run_java:
      javac_task:
        command: "javac",
        javaOptions:
          classpath: [ "tomcat/lib/servlet-api.jar" ]
          d: "dist/WEB-INF/classes"
        sourceFiles: [ "src/java/*.java", "src/java/servlets/*.java", "src/java/models/*.java" ]


  # Load external Grunt task plugins.
  grunt.loadNpmTasks 'grunt-shell'
  grunt.loadNpmTasks 'grunt-tomcat-developer'
  grunt.loadNpmTasks 'grunt-mkdir'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-run-java'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-war'

  # Default task.
  grunt.registerTask "compile", [ "clean", "mkdir", "run_java:javac_task", "copy", "war" ]
  grunt.registerTask "start", [ "tomcat:start" ]