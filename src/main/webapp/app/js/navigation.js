(function () {
    'use strict';
    var module = angular.module('app');
    module.config(['$routeProvider', function ($routeProvider) {
        $routeProvider.
            when('/users/:id', {templateUrl: 'users/addUser.html', controller: UserCtrl}).
            when('/users/', {templateUrl: 'users/userList.html', controller: UserListCtrl}).
            //when('/customers', {templateUrl: 'customerList.html', controller: demoController}).
            //when('/detail/:itemId', {templateUrl: 'detail.html',   controller: DetailCtrl}).
            //when('/settings', {templateUrl: 'settings.html',   controller: SettingsCtrl}).
            otherwise({redirectTo: '/users/'});
    }]);
})();