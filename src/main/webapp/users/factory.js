(function() {
    "use strict";

    var module = angular.module("app");

    module.factory("IssueService", ["$resource", function($resource) {
        return $resource("https://api.github.com/repos/:username/:repo/issues", {
            state: "open"
        }, {
            query: {
                method: "GET",
                isArray: true
            }
        });
    }]);

    module.factory("UserService", ["$resource", function($resource) {
        return $resource("../json/users/list", {

        }, {
            list: {
                method: "GET",
                isArray: true
            }
        });
    }]);



})();