app = angular.module 'todoRails', [
  'todoRails.controllers'
  'ngMaterial'
  'restangular'
]
app.config ($mdThemingProvider, $mdIconProvider, RestangularProvider) ->
  $mdThemingProvider.theme('default')
      .primaryPalette('blue')
      .accentPalette('red');

  ## Restangular config
  RestangularProvider.setBaseUrl "#{window.location.href}/"
  RestangularProvider.setRequestSuffix '.json'

angular.module('todoRails.controllers', [])
