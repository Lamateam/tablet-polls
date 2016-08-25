# Grunt configuration updated to latest Grunt.  That means your minimum
# version necessary to run these tasks is Grunt 0.4.
#
# Please install this locally and install `grunt-cli` globally to run.
module.exports = (grunt) ->
  
  # Initialize the configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON('package.json')
    shell:
      start:
        command: "coffee server.coffee"

  # Load external Grunt task plugins.
  grunt.loadNpmTasks 'grunt-shell'

  # Default task.
  grunt.registerTask "start", [ "shell:start"]