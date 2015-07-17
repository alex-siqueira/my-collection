(function() {
    'use strict';

    angular
    	.module('app')
    	.controller('AppController', AppController);
    
    function AppController(){
    	this.selectedCollection = "";
    	
    	this.setSelectedCollection = function(value){
    		this.selectedCollection = value;
    	}
    }
    
})();