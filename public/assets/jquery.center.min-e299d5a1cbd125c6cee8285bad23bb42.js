/*! Copyright 2011, Ben Lin (http://dreamerslab.com/)
* Licensed under the MIT License (LICENSE.txt).
*
* Version: 1.1.1
*
* Requires: jQuery 1.2.6+
*/
(function(e,t){var n=function(){if(t.innerWidth!=undefined)return[t.innerWidth,t.innerHeight];var e=document.body,n=document.documentElement;return[Math.max(n.clientWidth,e.clientWidth),Math.max(n.clientHeight,e.clientHeight)]};e.fn.center=function(r){var i=e(t),s=i.scrollTop();return this.each(function(){var t=e(this),o=e.extend({against:"window",top:!1,topPercentage:.5,resize:!0},r),u=function(){var e=o.against,r,i;e==="window"?r=n():e==="parent"?(i=t.parent(),r=[i.width(),i.height()],s=0):(i=t.parents(e),r=[i.width(),i.height()],s=0);var u=(r[0]-t.outerWidth())*.5,a=(r[1]-t.outerHeight())*o.topPercentage+s;o.top&&(a=o.top+s),t.css({left:u,top:a})};u(),o.resize===!0&&i.resize(u)})}})(jQuery,window);