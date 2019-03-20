function LastRead(){
	this.bookList="bookList"
	}
LastRead.prototype={	
	set:function(bid,tid,title,texttitle,author){
		if(!(bid&&tid&&title&&texttitle&&author))return;
		var v=bid+'#'+tid+'#'+title+'#'+texttitle+'#'+author;
		this.setItem(bid,v);
		this.setBook(bid)		
		},
	
	get:function(k){
		return this.getItem(k)?this.getItem(k).split("#"):"";						
		},
	
	remove:function(k){
		this.removeItem(k);
		this.removeBook(k)			
		},
	
	setBook:function(v){
		var reg=new RegExp("(^|#)"+v); 
		var books =	this.getItem(this.bookList);
		if(books==""){
			books=v
			}
		 else{
			 if(books.search(reg)==-1){
				 books+="#"+v				 
				 }
			 else{
				  books.replace(reg,"#"+v)
				 }	 
			 }	
			this.setItem(this.bookList,books)
		
		},
	
	getBook:function(){
		var v=this.getItem(this.bookList)?this.getItem(this.bookList).split("#"):Array();
		var books=Array();
		if(v.length){
			
			for(var i=0;i<v.length;i++){
				var tem=this.getItem(v[i]).split('#');	
				if(i>v.length-11){
					if (tem.length>3)	books.push(tem);
				}
				else{
					lastread.remove(tem[0]);
				}
			}		
		}
		return books		
	},
	
	removeBook:function(v){		
	    var reg=new RegExp("(^|#)"+v); 
		var books =	this.getItem(this.bookList);
		if(!books){
			books=""
			}
		 else{
			 if(books.search(reg)!=-1){	
			      books=books.replace(reg,"")
				 }	 
			 
			 }	
			this.setItem(this.bookList,books)		
		
		},
	
	setItem:function(k,v){
		if(!!window.localStorage){		
			localStorage.setItem(k,v);		
		}
		else{
			var expireDate=new Date();
			  var EXPIR_MONTH=30*24*3600*1000;			
			  expireDate.setTime(expireDate.getTime()+12*EXPIR_MONTH)
			  document.cookie=k+"="+encodeURIComponent(v)+";expires="+expireDate.toGMTString()+"; path=/";		
			}			
		},
		
	getItem:function(k){
		var value=""
		var result=""				
		if(!!window.localStorage){
			result=window.localStorage.getItem(k);
			 value=result||"";	
		}
		else{
			var reg=new RegExp("(^| )"+k+"=([^;]*)(;|\x24)");
			var result=reg.exec(document.cookie);
			if(result){
				value=decodeURIComponent(result[2])||""}				
		}
		return value
		
		},
	
	removeItem:function(k){		
		if(!!window.localStorage){
		 window.localStorage.removeItem(k);		
		}
		else{
			var expireDate=new Date();
			expireDate.setTime(expireDate.getTime()-1000)	
			document.cookie=k+"= "+";expires="+expireDate.toGMTString()							
		}
		},	
	removeAll:function(){
		if(!!window.localStorage){
		 window.localStorage.clear();		
		}
		else{
		var v=this.getItem(this.bookList)?this.getItem(this.bookList).split("#"):Array();
		var books=Array();
		if(v.length){
			for( i in v ){
				var tem=this.removeItem(v[k])				
				}		
			}
			this.removeItem(this.bookList)				
		}
		}	
	}

function showbook(){
	var showbook=document.getElementById('banner');
	var bookhtml='<ul class="newlist">';
	var books=lastread.getBook();
	if(books.length){
		for(var i=books.length-1;i>-1;i--){//for(var i=0 ;i<books.length;i++){
			var _17mb_Sid = parseInt(books[i][0]/1000);


            bookhtml+="<li class='text-more'>";
            bookhtml+="<div class='newlist-title text-more xb3 xm3 xs3 xl8'>";
            bookhtml+="<a href='/"+ _17mb_Sid + '/' + books[i][0]+"/'>"+books[i][2]+"</a>";
            bookhtml+="</div>";
            bookhtml+="<div class='newlist-zj text-more xb5 xm5 xs3 xl4'>";
            bookhtml+="<a href='/"+ _17mb_Sid + '/'+books[i][0]+'/'+books[i][1]+".html'>"+books[i][3]+"</a>";
            bookhtml+="</div>";
            bookhtml+="<div class='newlist-zz text-more xb2 xm2 xs2 hidden-l '>";
            bookhtml+=books[i][4];
            bookhtml+="</div>";
            bookhtml+="<div class='jilubottom text-more xb2 xm2 xs2 xl12'>";
            bookhtml+="<a href='/"+ _17mb_Sid + '/'+books[i][0]+'/'+books[i][1]+".html'> 继续阅读</a>";
            bookhtml+="<a href='javascript:removebook(\""+books[i][0]+"\")'> 删除此书</a>";
            bookhtml+="</div>";
            bookhtml+="</li>";
		}
	}
	else{
		
	}
	showbook.innerHTML=bookhtml+"</ul>";

} 

function removebook(k){
	lastread.remove(k);
	showbook()
}


	
function yuedu(){
	//document.write("<a href='javascript:showbook();' target='_self'>点击查看阅读记录</a>");
	showbook();
}

window.lastread = new LastRead();

