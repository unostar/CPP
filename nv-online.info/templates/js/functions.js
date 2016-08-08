// -------------------------------------------------------------------------------------------------------------------------------------------------------
$(document).ready(function(){   // jQuery magic

// Tabs
$('#most').tabs();
$('#popular').tabs();
$('#pop_comments').tabs();
$('#other_articles').tabs();

//hover states on the static widgets
$('#dialog_link, ul#icons li').hover(
function() { $(this).addClass('ui-state-hover'); }, 
function() { $(this).removeClass('ui-state-hover'); }
);

}); // end of jQuery magic
// -------------------------------------------------------------------------------------------------------------------------------------------------------

var tags = new Array ( "p", "li", "div", "h1", "h2", "h3", "h4", "h5", "h6", "td" ); // html 'text' tags that should be parsed
var defFont = 13; // default font size
var iobj = 'story_content'; // Object (addressed by ID) on page that is addressed, otherwise whole page
var pobj = [['intro',13],['full-text',13]]; // array of predefined sizes for objects
var firstCall = true;
var rst = 0;

function FontSize(inc,fSize,obj) {

  if (firstCall) {
    firstCall = false;
    FontSize(0,defFont,obj);
  }

  if (inc) {rst = parseInt(rst+inc);}
  else if (rst) {inc=parseInt(-rst);rst=0;}

  obj = (iobj) ? iobj : obj;

  if (obj)
    obj = (document.getElementById) ? document.getElementById(obj) : document.all(obj)
  else
    obj = document;

  for (j=0; j<tags.length; j++) {

    var getElement = obj.getElementsByTagName(tags[j]);

      for (i=0; i<getElement.length; i++) {
        eachElement = getElement[i];
        if (fSize) {
          newFontSize = parseInt(fSize);
          switch(tags[j]) {
          case "h1": newFontSize += 5; break;
          case "h2": newFontSize += 3; break;
          case "h3": newFontSize += 2; break;
          case "h4": newFontSize += 1; break;
          case "h5": newFontSize += 1; break;
          case "h6": newFontSize += 1;
          }
          for (p=0;p<pobj.length;p++){
            if (eachElement.id == pobj[p][0]) newFontSize = parseInt(pobj[p][1]);
            else if (tags[j] == pobj[p][0]) newFontSize = parseInt(pobj[p][1]);
          }
        }
        else {
          currentFontSize = parseInt(eachElement.style.fontSize);
          fontIncrease = parseInt(inc);
          newFontSize = currentFontSize + fontIncrease;
        }
        if (tags[j] == "li") {eachElement.style.lineHeight = Math.round(newFontSize*1.2) + "px";}
        else {eachElement.style.lineHeight = Math.round(newFontSize*1.5) + "px";}
        eachElement.style.fontSize = newFontSize + "px";
      }
  }
}