(function() {
    'use strict';

    angular
    	.module('app.collections')
    	.controller('CollectionsController', Collections);
    
    function Collections(dataservice){
    	var Collection = dataservice.collection();
    	var vm = this;

    	vm.list = Collection.query();
    	
    	vm.addCollection = function(name){
    		var newCol = new Collection({name: name});
    		newCol.$save().then(this.list = Collection.query());
    	};
    }
})();