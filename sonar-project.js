const sonarqubeScanner = require('sonarqube-scanner');

sonarqubeScanner({
  serverUrl: 'http://13.127.182.248:9000/',
       options : {
	    'sonar.projectDescription': 'ngautomation',
	    'sonar.projectName': 'ngautomation',
	    'sonar.projectKey':'NodeJsMithunTechnologies',
	    'sonar.login': '9bc5c49cfe2517ac95ba9d5775cc33f5326a4efb',
	    //'sonar.login': 'admin',
	    //'sonar.password': 'admin',
            'sonar.projectVersion':'1.0',
	    'sonar.language':'js',
            'sonar.sourceEncoding':'UTF-8',
            'sonar.sources': '.',
	  //'sonar.tests': 'specs',
          //'sonar.inclusions' : 'src/**',
	       'sonar-exclusions' : '**/node_modules/**'
       },
}, () => {});
