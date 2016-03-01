//(function () {
    'use strict';
    var module = angular.module('app');

    module.controller('UserListCtrl', UserListCtrl);
    UserListCtrl.$inject = ["$scope","NgTableParams", "$resource"];
    function UserListCtrl($scope,NgTableParams, $resource) {
        // tip: to debug, open chrome dev tools and uncomment the following line
        //debugger;

        var Api = $resource("../json/users/map");
        $scope.tableParams = new NgTableParams({}, {
            getData: function(params) {
                // ajax request to api
                return Api.get(params.url()).$promise.then(function(data) {
                    params.total(data.totalCount); // recal. page nav controls
                    return data.data;
                });
            }
        });
    }



//})();
