function formCheck(formobj){
//1) Enter name of mandatory fields
var fieldRequired = Array("fm_selrecip", "fm_name", "fm_email", "fm_subject", "fm_verify", "fm_message", "recaptcha_response_field");
//2) Enter field description to appear in the dialog box
var fieldDescription = Array("Послать куда?", "Ваше имя", "Ваш email", "Тема сообщения", "Проверочный код", "Текст сообщения", "Проверочный код");
//3) Enter dialog message
var alertMsg = "Пожалуйста, заполните следующие поля:\n";

var l_Msg = alertMsg.length;
for (var i = 0; i < fieldRequired.length; i++){
var obj = formobj.elements[fieldRequired[i]];
if (obj){
switch(obj.type){
case "select-one":
if (obj.selectedIndex == -1 || obj.options[obj.selectedIndex].text == ""){
alertMsg += " - " + fieldDescription[i] + "\n";
}
break;
case "select-multiple":
if (obj.selectedIndex == -1){
alertMsg += " - " + fieldDescription[i] + "\n";
}
break;
case "text":
case "textarea":
if (obj.value == "" || obj.value == null){
alertMsg += " - " + fieldDescription[i] + "\n";
}
break;
default:
if (obj.value == "" || obj.value == null){
alertMsg += " - " + fieldDescription[i] + "\n";
}}}}
if (alertMsg.length == l_Msg){
if (document.all||document.getElementById){
for (i=0;i<formobj.elements.length;i++){
if (formobj.elements.item(i).type=="submit"||formobj.elements.item(i).type=="reset"){
formobj.elements.item(i).value="Спасибо!";
if (submitted){formobj.elements.item(i).disabled=true;}else{var submitted=true;}
}}}
return true;
}else{
alert(alertMsg);
return false;
}}
