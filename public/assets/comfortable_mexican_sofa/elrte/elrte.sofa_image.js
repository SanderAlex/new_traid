(function(e){elRTE.prototype.ui.prototype.buttons.sofa_image=function(t,n){this.constructor.prototype.constructor.call(this,t,n);var r=this;r.img_src=null,r.dialog=null,e(document).on("submit","#cms_dialog form.image_url",function(){return r.img_src=e(this).find("input[name=image_url]").val(),r.set(),!1}),e(document).on("click","#cms_dialog .uploaded_files .file_info",function(){return console.log(e(this)),console.log(e(this).parents("#cms_dialog")),ui_control=e(this).parents("#cms_dialog").data("ui_control"),ui_control&&(ui_control.img_src=e(this).data("url"),ui_control.set(),e(this).parents("#cms_dialog").data("ui_control",null)),!1}),this.set=function(){r.rte.history.add();var t=e(r.rte.doc.createElement("img"));t.attr("src",r.img_src),r.rte.selection.insertNode(t[0]),r.rte.ui.update(),r.dialog.dialog("close")},this.command=function(){r.dialog=jQuery(jQuery("#cms_dialog").get(0)||jQuery('<div id="cms_dialog"></div>')),r.dialog.dialog({title:t.i18n("Image"),modal:!0,resizable:!1,width:800,closeOnEscape:!0,autoOpen:!1}),jQuery.ajax({url:"/"+e('meta[name="cms-admin-path"]').attr("content")+"/sites/"+e('meta[name="cms-site-id"]').attr("content")+"/dialog/image",success:function(t){r.dialog.html(t),r.dialog.dialog("open"),console.log(e(r.dialog)),e(r.dialog).data("ui_control",r),e.CMS.enable_uploader()}})},this.update=function(){this.domElem.removeClass("disabled")}},elRTE.prototype.options.buttons.sofa_image="Image",elRTE.prototype.options.panels.sofa_image=["sofa_image"]})(jQuery);