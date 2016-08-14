$(document).ready(function(){
	CKEDITOR.replace("newtopic_textarea",{
		customConfig : '../../../ckeditor_config_home.js',
		toolbar :
			[
				//只开启表情和图片工具
				['Image','Smiley','uploadwidget']
			]
	});
	
//	$(".pulldown").show();
	
	$(".def-nav,.info-i").hover(function() {
		$(this).find(".pulldown-nav").addClass("hover");
		$(this).find(".pulldown").show();
	}, function() {
		$(this).find(".pulldown").hide();
		$(this).find(".pulldown-nav").removeClass("hover");
	});
	
	//回复
	$("body").on("click",".btn-replying",function(){
		$(".reply-hidden").toggleClass("reply-hidden-show");
	});
	
	$("body").on("click",".btn-post-new-reply",function(){
		var editor_data = CKEDITOR.instances.reply_textarea.getData();  
		alert(editor_data);
		$("#reply-form").submit();
	});
});