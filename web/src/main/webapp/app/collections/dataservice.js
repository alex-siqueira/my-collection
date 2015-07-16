(function() {
    'use strict';

    angular
    	.module('app.collections')
    	.factory('dataservice', dataservice);
    
    function dataservice($resource){
    	return $resource('resources/collections', {}, {
    	      query: {method:'GET', isArray:true}
        });
    }
    
})();
