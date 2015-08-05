(function() {
    'use strict';

    angular
    	.module('app.core')
    	.directive('menuClose', menuClose);

    function menuClose(){
        return {
            restrict: 'AC',
            link: function($scope, $element) {
                $element.bind('click', function() {
                    var drawer = angular.element(document.querySelector('.mdl-layout__drawer'));
                    if(drawer) {
                        drawer.toggleClass('is-visible');
                    }
                });
            }
        };
    }
})();