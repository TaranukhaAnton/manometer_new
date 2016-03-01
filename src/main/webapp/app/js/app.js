var module = angular.module('app', ['ngRoute', 'ngTable', 'ngResource']);
//$('#receptionOnWorkDate').datetimepicker();
$('#receptionOnWorkDate').datepicker();
//
$('.input-group.date').datepicker({
 daysOfWeekHighlighted: "3",
 todayHighlight: true
});


module.controller('UserCtrl', UserCtrl);
UserCtrl.$inject = ["$scope", "$resource","$routeParams"];

function UserCtrl($scope, $resource, $routeParams) {

    $scope.hello = $routeParams.id;

}








module.controller('MyController', MyController);
//module.controller('HomeCtrl', HomeCtrl);
//module.controller('ListCtrl', ListCtrl);
//module.controller('DetailCtrl', DetailCtrl);


//module.controller("demoController", demoController);
//demoController.$inject = ["$scope", "NgTableParams", "IssueService"];

/*
 function demoControllerNew($scope, NgTableParams, UserService) {
 $scope.tableParams = new NgTableParams({}, {
 getData: function (params) {


 return UserService.list({
 page: params.page(),
 per_page: params.count()


 }, function (data, headersGetter) {



 params.total(data.totalPages);
 return data.data;
 }).$promise;
 }
 });
 }
 */


//function demoController($scope, NgTableParams, IssueService) {
//    $scope.tableParams = new NgTableParams({}, {
//        getData: function (params) {
//            params.total(800);
//
//            return IssueService.query({
//                page: params.page(),
//                per_page: params.count(),
//
//                state: 'all',
//                username: 'esvit',
//                repo: 'ng-table'
//            });
//        }
//    });
//}

















/* Controllers */
//UserListCtrl.$inject = ["$scope","$http", "NgTableParams", "UserService"];
//function UserListCtrl($scope,$http, NgTableParams, UserService) {
//    $scope.tableParams = new NgTableParams({}, {
//        getData: function ($defer, params) {
//            $http.get('../json/users/map', {
//                params: {
//                    pageNumber: params.page() - 1
//                    //rangeStart: rangeStart,
//                    //rangeStop: rangeStop
//                }
//            })
//                .success(function (data, status) {
//
//                    params.total(80);
//
//                    $defer.resolve(data.gata);
//                });
//        }
//    });


    //$http.get("../json/users/list").success(function(response){
    //    //ajax request to fetch data into vm.data
    //    //vm.users = response.data;  // data to be displayed on current page.
    //   // vm.total_count = response.total_count; // total data count.
    //    console.log('1111');
    //});
    //
    //console.log('sdf');
    //$scope.page= Page;
//}
//
//function MyController($scope, Page) {
function MyController($scope) {
    //console.log(Page);
    //$scope.page = Page;
}
//
//function HomeCtrl($scope, Page) {
//    Page.setTitle("Welcome");
//}


//function ListCtrl($scope, Page, Model) {
//    Page.setTitle("Items");
//    $scope.items = Model.notes();
//
//}
//
//function DetailCtrl($scope, Page, Model, $routeParams, $location) {
//    Page.setTitle("Detail");
//    var id = $scope.itemId = $routeParams.itemId;
//    $scope.item = Model.get(id);
//}
//
//function SettingsCtrl($scope, Page) {
//    Page.setTitle("Settings");
//}

/* Services */

//angular.module('appServices', [])

    //.factory('Page', function ($rootScope) {
    //    var pageTitle = "Untitled";
    //    return {
    //        title: function () {
    //            return pageTitle;
    //        },
    //        setTitle: function (newTitle) {
    //            pageTitle = newTitle;
    //        }
    //    }
    //})

    //.factory('Model', function () {
    //var data = [
    //    {id: 0, title: 'Doh', detail: "A dear. A female dear."},
    //    {id: 1, title: 'Re', detail: "A drop of golden sun."},
    //    {id: 2, title: 'Me', detail: "A name I call myself."},
    //    {id: 3, title: 'Fa', detail: "A long, long way to run."},
    //    {id: 4, title: 'So', detail: "A needle pulling thread."},
    //    {id: 5, title: 'La', detail: "A note to follow So."},
    //    {id: 6, title: 'Tee', detail: "A drink with jam and bread."}
    //];
    //return {
    //    notes: function () {
    //        return data;
    //    },
    //    get: function (id) {
    //        return data[id];
    //    },
    //    add: function (note) {
    //        var currentIndex = data.length;
    //        data.push({
    //            id: currentIndex, title: note.title, detail: note.detail
    //        });
    //    },
    //    delete: function (id) {
    //        var oldNotes = data;
    //        data = [];
    //        angular.forEach(oldNotes, function (note) {
    //            if (note.id !== id) data.push(note);
    //        });
    //    }
    //}
//});