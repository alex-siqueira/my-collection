(function() {
    'use strict';

    angular
    	.module('app.collections')
    	.controller('CollectionsController', Collections);
    
    function Collections(dataservice){
    	this.list = dataservice.getCollections().query();
    }
})();