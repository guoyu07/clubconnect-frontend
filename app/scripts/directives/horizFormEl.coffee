'use strict';

angular.module('ClubConnectApp')
  .directive 'horizFormEl', [->
    scope:
      labelCols: '@'
      controlCols: '@'
      label: '@'
      help: '@'
      elementId: '@'
    restrict: 'EA'
    template: '<div class="form-group"><label class="control-label col-lg-{{labelCols}} col-md-{{labelCols}}" for="{{elementId}}">{{label}}</label><div class="col-lg-{{12 - labelCols}} col-md-{{12 - labelCols}}"><div class="row"><div class="col-lg-{{controlCols}} col-md-{{controlCols}}" ng-transclude></div></div><div class="row" ng-show="help"><div class="col-lg-12 col-md-12"><p class="help-block" ng-bind-html-unsafe="help"></p></div></div></div></div>'
    transclude: true
  ]
