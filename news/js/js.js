function my_tab(){
	var hot=document.getElementById('hot');
		var com=document.getElementById('com');
		var hotList=document.getElementById('hotList');
		var comList=document.getElementById('comList');
		hotList.style.display="block";
		comList.style.display="none";
		hot.onmouseover=function(){
			hotList.style.display="block";
			comList.style.display="none";
		}
		com.onmouseover=function(){
			hotList.style.display="none";
			comList.style.display="block";
		}
}
my_tab();
