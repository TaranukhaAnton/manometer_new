//(function () {
    'use strict';
    angular.module('manometerApp')
        .controller('MainController', MainController)
        .controller('SecondController', SecondController) ;

    MainController.$inject = ['$scope'];
    function MainController($scope) {
        $scope.vvv = "test";
    }

    SecondController.$inject = ['$scope'];
    function SecondController($scope) {
        $scope.vvv = "tyyyy";
    }
//})();
