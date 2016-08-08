function newf(namef){

mywin=open("","win1","height=480,width=720,status=no,toolbar=no,menubar=no");
mywin.document.write("<html><head></head><body>");
mywin.document.write("<img src="namef"><br />");
mywin.document.write("<a href=\"javascript:close()\">Close</a>");
mywin.document.write("</body></html>");
}

