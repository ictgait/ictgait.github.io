function list(url,target,txt)
{document.write("<tr><td height=\"16\" nowrap><img src=\"images/line.gif\" width=\"13\" height=\"16\" align=\"absmiddle\"><a href="+url+" target=\"_blank\"><img border=\"0\" src=\"images/icon-page.gif\" width=\"16\" height=\"15\" align=\"absmiddle\" hspace=\"2\"></a><a href="+url+" target="+target+">"+txt+"</a></td></tr>")}
function t(txt)
{document.write("<tr><td nowrap width=\"36\"><img src=\"images/icon-folder1-close.gif\" width=\"15\" height=\"13\"><img src=\"images/icon-folder-close.gif\" width=\"16\" height=\"15\" align=\"absmiddle\" ></td><td>"+txt+"</td></tr>")}
function initIt(){
        divCount = document.all.tags("DIV");
        for (i=0; i<divCount.length; i++) {
            obj = divCount(i);
            if (obj.className == "child" || obj.className == "child1") obj.style.display = "none";
        }
}
function expandIt(el) {

        obj = eval("page" + el);
        obj2 = eval("main" + el);
        if (obj.style.display == "none") {
            obj.style.display = "block";
			obj2.all.tags('img')[0].src='images/icon-folder1-open.gif';
			obj2.all.tags('img')[1].src='images/icon-folder-open.gif';
        }
        else {
            obj.style.display = "none";
			obj2.all.tags('img')[0].src='images/icon-folder1-close.gif';
			obj2.all.tags('img')[1].src='images/icon-folder-close.gif';
        }

}
onload = initIt;
var judge=0;
function expandall(o) {
if (judge==0) {divCount2 = document.all.tags("DIV");
        for (i=0; i<divCount2.length; i++) {
            obj2 = divCount2(i);
            if (obj2.className == "child" || obj.className == "child1" || obj2.style.display == "none") 
			{obj2.style.display = "block";}
			if (obj2.className == "menu")
			{obj2.all.tags('img')[0].src='images/icon-folder1-open.gif';
            obj2.all.tags('img')[1].src='images/icon-folder-open.gif';
            }
}

judge=1;
o.src='images/icon-closeall.gif';
o.alt='ȫ���۵�';
}
else {divCount2 = document.all.tags("DIV");
        for (i=0; i<divCount2.length; i++) {
            obj2 = divCount2(i);
            if (obj2.className == "child" || obj.className == "child1" || obj2.style.display == "block") 
			{obj2.style.display = "none";}
			if (obj2.className == "menu")
			{obj2.all.tags('img')[0].src='images/icon-folder1-close.gif';
            obj2.all.tags('img')[1].src='images/icon-folder-close.gif';
            }
}
judge=0;
o.src='images/icon-expandall.gif';
o.alt='ȫ��չ��';
}
}