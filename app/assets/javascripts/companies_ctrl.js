(function() {
  "use strict";

  angular.module("app").controller("companiesCtrl", function($scope, $http) {
    function setup() {
      $http.get('/api/v1/companies.json').then(function(response) {
        $scope.companies = response.data;
      });

    }

    setup();

    $scope.addCompany = function(company) {
      console.log(company);
      $http.post('/api/v1/companies.json', company).success(function(response) {
        console.log(response.message);
        $scope.message = response.message;
        $scope.companies.push(company);
        $scope.company = {};
      }).error(function(response) {
        console.log(response);
        $scope.errors = response.errors;
      });
    };

    $scope.toggleOrder = function(orderAttribute) {
      console.log($scope.companies)
      if (orderAttribute != $scope.orderAttribute) {
        $scope.isReverse = false;
      } else {
        $scope.isReverse = !$scope.isReverse;
      }
      $scope.orderAttribute = orderAttribute;
    }
    window.$scope = $scope;
  });
})();
