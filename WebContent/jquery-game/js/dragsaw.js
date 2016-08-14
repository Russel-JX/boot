$(document).ready(function(){
	//alert(3);
	//随机为图片编号
	var pics = $(".source").find(".split");
	var randomArray = [];
	var count = 0;
	//1-9
	while(randomArray.length<9){
		var ran = Math.floor(Math.random()*10);
		if($.inArray(ran,randomArray,0)<0&&ran!=0){
			randomArray[count] = ran;
			count++;
		}
	}
	$.each(pics,function(index,item){
		var inner = "<div class='inner'>"+randomArray[index]+"</div>";
		$(this).append(inner);
	});
	
	
	//定义拖拽对象
	var dragOption = {
			cursor: "crosshair",
			distance:2,
			//iframeFix:true
			opacity:0.35,
			refreshPositions:true,
			revert:"invalid",
			snap:".location",//与哪些元素对齐
			//snapMode:"inner",
			snapTolerance:30,
			stack:".split"//使当前drag，拖拽时总在最前
	};
	$(".split").draggable(dragOption);
	
	//定义drop对象
	var dropOption = {
		accept:".split",
		activeClass:"ui-state-hover",
		hoverClass:"ui-state-active"	
	};
	$(".canvas").droppable(dropOption);
	
	
	/**
	 * 根据拖拽后，的left和top属性值，判断拖拽了多远，是否到达目的地。
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	$(".result").text(randomArray);
	
	
});