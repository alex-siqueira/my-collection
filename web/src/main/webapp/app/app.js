(function() {
    'use strict';

    angular
    	.module('app')
    	.controller('AppController', ['$scope', AppController]);
    
    function AppController($scope){
    	var vm = this;
    	vm.selectedCollection = null;
    	
    	vm.setSelectedCollection = function(collection){
    		this.selectedCollection = collection;
    		$scope.$broadcast('changedCollection', collection);
    	};
    }
})();