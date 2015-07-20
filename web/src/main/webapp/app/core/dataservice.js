(function() {
    'use strict';

    angular
    	.module('app.core')
    	.factory('dataservice', dataservice);
    
    function dataservice($resource){
    	var Collections = function(){
        	return $resource('resources/collections/:id');
        }
    	var Items = function() {
	    	return $resource('resources/collections/:collection/items/:id', {collection: '@id'});
    	}
    	
    	var resources = {
    			collections: Collections,
    			items: Items
    	};
    	
    	return resources;
    }
})();