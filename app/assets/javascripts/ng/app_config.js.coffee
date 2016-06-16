@app = angular.module('AngularActionCableRailsTemplate', [])


# Set up so CSRF token is included in each request that way Angular and Rails play nice together
@app.config ["$httpProvider", ($httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = angular.element('meta[name=csrf-token]').attr('content')
]