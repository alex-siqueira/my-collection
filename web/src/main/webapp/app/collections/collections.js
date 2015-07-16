(function() {
    'use strict';

    angular
    	.module('app.collections')
    	.controller('Collections', Collections);
    
    function Collections(dataservice){
    	this.list = dataservice.query();
    }
})();