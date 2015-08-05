(function() {
    'use strict';

    angular
    	.module('app.core')
    	.factory('dataservice', dataservice);
    
    function dataservice($resource){
    	var Collection = function(){
        	return $resource('resources/collections/:id');
        }
    	var Item = function() {
	    	return $resource('resources/collections/:collection/items/:id', {collection: '@id'});
    	}
    	
    	var resources = {
    			collection: Collection,
    			item: Item
    	};
    	
    	return resources;
    }
})();