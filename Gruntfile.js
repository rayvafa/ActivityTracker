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
                dest: 'scripts/scripts.min.js'
            },
            libs: {
                src: 'scripts/lib/**/*.js',
                dest: 'scripts/libs.min.js'
            }
        },
        sass: {
            build: {
                options: {
                    style: 'expanded'  // expanded or compressed
                },
                files: [{
                    expand: true,
                    cwd: 'styles/sass/',
                    src: ['style.scss'],
                    dest: 'styles/css/',
                    ext: '-sass.css'
                }]
            }
        },
        cssmin: {
            minify: {
                expand: true,
                cwd: 'styles/css/',
                src: ['*.css', '!*.min.css'],
                dest: 'styles/css/',
                ext: '.min.css'
            }
        },
        concat_css: {
            concat: {
                src: 'styles/css/**/*.min.css',
                dest: 'styles/style.min.css'
            }
        }
    });

    // Load the plugin that provides the "uglify" task.
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-coffee');
    grunt.loadNpmTasks('grunt-contrib-sass');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-concat-css');

    // Default task(s).
    grunt.registerTask('default', ['sass', 'cssmin', 'concat_css', 'coffee', 'uglify']);

};
