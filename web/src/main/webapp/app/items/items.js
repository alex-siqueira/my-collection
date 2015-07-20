(function() {
    'use strict';

    angular
    	.module('app.items')
    	.controller('ItemsController', Items);
    
    function Items(dataservice){
    	this.collection = "Books";
    	this.list = dataservice.items().query({collection: this.collection});
    	
    	this.selectCollection = function(value){
    		this.collection = value;
    		this.list = dataservice.items().query({collection: value});
    	}    	
    }
})();