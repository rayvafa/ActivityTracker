module.exports = function(grunt) {

    // Project configuration.
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        coffee: [{
            expand: true,
            cwd: 'scripts/coffeescripts/',
            src: ['**/*.coffee'],
            dest: 'scripts/javascripts/coffeebuilds/',
            ext: '.js'
        }],
        uglify: {
            build: {
                src: 'scripts/javascripts/**/*.js',
                dest: 'scripts/script.min.js'
            }
        },
        sass: {
            dist: {
                files: [{
                    expand: true,
                    cwd: 'styles/sass/',
                    src: ['style.scss'],
                    dest: 'styles/',
                    ext: '.css'
                }]
            }
        }
    });

    // Load the plugin that provides the "uglify" task.
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-contrib-sass');

    // Default task(s).
    grunt.registerTask('default', ['sass', 'coffee', 'uglify']);

};
