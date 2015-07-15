(function() {
    'use strict';

    angular
    	.module('app.collections', ['ngResource'])
    	.controller('Collections', collections);
    
    function collections($resource){
    	var service = $resource('resources/collections', {}, {
    		query: {method: 'GET', isArray:true}
    	});
    	this.list = service.query();
    	this.id="123";
    }   
    
})();