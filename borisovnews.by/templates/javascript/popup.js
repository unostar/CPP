var popupLinkConfig = new Array;
// popupLinkConfig["classname"] = new Array ( "targetname", "width=350,height=640,scrollbars=yes,resizable=yes,status=yes,toolbar=yes,location=yes,menubar=yes");
popupLinkConfig["popup"]    = new Array ( "", "width=320,height=400,scrollbar=yes,menubar=yes");
popupLinkConfig["glossary"] = new Array ( "help", "width=240,height=300,resizable=yes,status=no");
popupLinkConfig["cover"] = new Array ( "help", "width=615,height=400,resizable=yes,status=no,scrollbars=yes");
popupLinkConfig["send"] = new Array ( "help", "width=300,height=340,resizable=yes,status=no,scrollbars=yes");
popupLinkConfig["contact"] = new Array ( "contact", "width=470,height=465,resizable=yes,status=no,scrollbars=yes");
popupLinkConfig["email"] = new Array ( "email", "width=370,height=410,resizable=no,status=no,scrollbars=no");
// ==========================================================================

addLoadEvent(initPopupLinks);

function initPopupLinks()
{
  if (!document.getElementsByTagName) return true;
  var pageLinks = document.getElementsByTagName("a");
  for (var i = 0; i < pageLinks.length; i++) 
  {
    if (((pageLinks[i].className != null) && 
         (pageLinks[i].className != "")) ||
        ((pageLinks[i].parentNode.className != null) && 
         (pageLinks[i].parentNode.className != "")))
    {
      var linkClass = " " + pageLinks[i].className + " ";
      if ((linkClass == "  ") && (pageLinks[i].parentNode.className != ""))
      {
        linkClass = " " + pageLinks[i].parentNode.className + " ";
      }
      for (var theKey in popupLinkConfig) 
      {
        if (linkClass.indexOf(" " + theKey + " ") > -1)
        {
          if ((pageLinks[i].target == "") || (pageLinks[i].target == null))
          {
            pageLinks[i].target = (popupLinkConfig[theKey][0] != "") ? popupLinkConfig[theKey][0] : theKey;
          }
          pageLinks[i].settings = popupLinkConfig[theKey][1];
          pageLinks[i].onclick = popUp;
        }
      }
    }
  }
  return true;
}

function popUp()
{
  newWin = window.open(this.href, this.target, this.settings);
  newWin.focus();
  return false;
}