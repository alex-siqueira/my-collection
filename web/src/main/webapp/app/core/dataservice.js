(function() {
    'use strict';

    angular
    	.module('app.core')
    	.factory('dataservice', dataservice);
    
    function dataservice($resource){
    	var getCollections = function(){
        	return $resource('resources/collections', {}, {
      	      query: {method: 'GET', isArray: true}
            });
        }
    	var getItems = function() {
	    	return $resource('resources/collections/:collection/items', {collection: '@'}, {
	    	      query: {method: 'GET', isArray: true}
	        });
    	}
    	
    	var services = {
    			getCollections: getCollections,
    			getItems: getItems
    	};
    	
    	return services;
    }
    
})();
