(function() {
    'use strict';

    angular
    	.module('app.items')
    	.controller('ItemsController', ['$scope', 'dataservice', Items]);
    
    function Items($scope, dataservice){
    	var Item = dataservice.item();
    	var vm = this;
    	vm.list = Item.query({collection: 'Books'});
    	
    	$scope.$on('changedCollection', refreshItems);
    	
    	function refreshItems (event, newCollection){
    		vm.list = Item.query({collection: newCollection});
    	};
    }
})();