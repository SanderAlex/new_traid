/*! Copyright 2011, Ben Lin (http://dreamerslab.com/)
* Licensed under the MIT License (LICENSE.txt).
*
* Version: 1.0.7
*
* Requires: 
* jQuery 1.3.0+, 
* jQuery Center plugin 1.0.0+ https://github.com/dreamerslab/jquery.center
*/
// wrap all the code in an anonymous function to prevent global vars
(function(e,t){var n={},r=0,i,s=[function(){}];e.msg=function(){var o,u,a,f,l,c,h;return a=[].shift.call(arguments),f={}.toString.call(a),l=e.extend({afterBlock:function(){},autoUnblock:!0,center:{topPercentage:.4},css:{},clickUnblock:!0,content:"Please wait...",fadeIn:200,fadeOut:300,bgPath:"",klass:"black-on-white",method:"appendTo",target:"body",timeOut:2400,z:1e3},n),f==="[object Object]"&&e.extend(l,a),c={unblock:function(){o=e("#jquery-msg-overlay").fadeOut(l.fadeOut,function(){s[l.msgID](o),o.remove()}),clearTimeout(i)}},h={unblock:function(e,t){var n=e===undefined?0:e;l.msgID=t===undefined?r:t,setTimeout(function(){c.unblock()},n)},replace:function(t){if({}.toString.call(t)!=="[object String]")throw"$.msg('replace'); error: second argument has to be a string";e("#jquery-msg-content").empty().html(t).center(l.center)},overwriteGlobal:function(e,t){n[e]=t}},r--,l.msgID=l.msgID===undefined?r:l.msgID,s[l.msgID]=l.beforeUnblock===undefined?function(){}:l.beforeUnblock,f==="[object String]"?h[a].apply(h,arguments):(o=e('<div id="jquery-msg-overlay" class="'+l.klass+'" style="position:absolute; z-index:'+l.z+"; top:0px; right:0px; left:0px; height:"+e(t).height()+'px;">'+'<div id="jquery-msg-content" class="jquery-msg-content" style="position:absolute;">'+l.content+"</div>"+"</div>"),o[l.method](l.target),u=e("#jquery-msg-content").center(l.center).css(l.css).hide(),o.hide().fadeIn(l.fadeIn,function(){u.fadeIn("fast").children().andSelf().bind("click",function(e){e.stopPropagation()}),l.afterBlock.call(h,o),l.clickUnblock&&o.bind("click",function(e){e.stopPropagation(),c.unblock()}),l.autoUnblock&&(i=setTimeout(c.unblock,l.timeOut))})),this}})(jQuery,document);