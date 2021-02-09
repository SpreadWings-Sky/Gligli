
 $(window).ready(function () {
            var options = {
                strings: ["Documentation: " + window.location.href],
                typeSpeed: 50,
                cursorChar: '',
                startDelay: 3000
            }
            var options1 = {
                strings: ["System information as of " + Date()],
                typeSpeed: 50,
                cursorChar: '',
                startDelay: 6000
            }
            var options2 = {
                strings: ["Welcome to GLIGLIManagement (GLM VER 1.02) "],
                typeSpeed: 50,
                cursorChar: ''
            }
            var type1 = new Typed("#WT", options2);
            var typed = new Typed("#DM", options);
            var type2 = new Typed("#SI", options1);
        });