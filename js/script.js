/*!
 * JavaScript Library
 * Includes jquery.js
 * Created by Mayank Pandey
 * Date: Sept 5 2015
 */
function trim(inputString) 
{
	if(typeof inputString != "string") { return inputString; }
	var retValue = inputString;
	var ch = retValue.substring(0, 1);
	while(ch == " ")
	{
	retValue = retValue.substring(1, retValue.length);
	ch = retValue.substring(0, 1);
	}

	ch = retValue.substring(retValue.length-1, retValue.length);
	while(ch == " ")
	{

		retValue = retValue.substring(0, retValue.length-1);
		ch = retValue.substring(retValue.length-1, retValue.length);
	}

	while(retValue.indexOf(" ") != -1)
	{
		retValue = retValue.substring(0, retValue.indexOf(" ")) +
		retValue.substring(retValue.indexOf(" ")+1, retValue.length);
	}

	return retValue;
}

//function to disable autocomplete form
function disableautocompletion(val)
{ 
	 var passwordControl=document.getElementById(val);
	 passwordControl.setAttribute("autocomplete","off");
}

function check_number(evt) 
{
evt = (evt) ? evt : window.event;
var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode > 31   && (charCode < 45 || charCode > 57))
	{
	status = "This field accepts numbers only."
	alert('This field accepts numbers only');
	return false;
	}
	status = "";
	return true;
}

function check_decimal(evt) 
{
evt = (evt) ? evt : window.event;
var charCode = (evt.which) ? evt.which : evt.keyCode;
if (charCode != 48 && charCode != 46)
{
	if (charCode > 31  && (charCode < 45 || charCode > 57))
	{
	status = "This field accepts numbers only."
	alert('This field accepts numbers only');
	return false;
	}
	status = "";
	return true;
}

else

{
	return false;
}
}

function isEmail(emailIn){

	var isEmailOk = false;
	var filter = /^[a-zA-Z0-9][a-zA-Z0-9._-]*\@[a-zA-Z0-9-]+(\.[a-zA-Z][a-zA-Z-]+)+$/
	if(emailIn.search(filter) != -1)
		isEmailOk = true;
	if(emailIn.indexOf("..") != -1)
		isEmailOk = false;
	if(emailIn.indexOf(".@") != -1)
		isEmailOk = false;
	return isEmailOk;

} // Ends

//Function for disabling ctrl key combinations
function disableCtrlKeyCombination(e)
{
	
	var forbiddenKeys = new Array('a','n','c','x','v','j');
	var key;
	var isCtrl;

	if(window.event)
	{
		key = window.event.keyCode; 
		if(window.event.ctrlKey)
		  isCtrl = true;
		else
		  isCtrl = false;
	}
	else
	{
		key = e.which; 
		
		
		if(e.ctrlKey)
		  isCtrl = true;
		else
		  isCtrl = false;
	}

	if(isCtrl)
	{
		for(i=0; i<forbiddenKeys.length; i++)
		{
			
			if(forbiddenKeys[i].toLowerCase() == String.fromCharCode(key).toLowerCase())
			{
	
			  return false;
			}
		}
	}
	
 return true;
}


/* Function to check Sql Injection  '\',''' */
function inj(t) {
    var t;
    var str = t.value.toLowerCase();
    var is_ok, is_ok1, flag = 0, flag1 = 0;

    bb = new Array('--', '"', ';', '/*', '*/', '\'', '\`', '\'or\'', '\'or', '\`or', '\`or`',
                        '\'=\'', '\`=\`', '\\', 'union', 'src', 'xp_', 'alter', 'begin', 'cast', 'create',
                        'cursor', 'group', 'update', 'language', '(', ')', 'script', 'having', 'declare', 'delete', 'drop',
                        'end', 'exec', 'javascript', 'vbscript', 'http', 'having', 'execute', 'fetch', 'insert',
                        'kill', 'open', 'select', 'sys', 'sysobjects', 'onfocus', 'alert', '=', 'syscolumns', 'table', '<', '>', ',');

    for (i = 0; i <= bb.length - 1; i++) {
        is_ok = str.indexOf(bb[i]);
        if (is_ok == -1) {
            flag = -1;
        }
        else {
            alert("Characters like " + bb[i] + " Not Allowed");
            t.value = "";
            t.focus();
            return false;
        }
    }
    if (flag != -1) {
        yy = new String("script>");
        yy1 = new String("</");
        yy = yy1 + yy;
        for (j = 0; j <= str.length - 1; j++) {
            is_ok1 = str.indexOf(yy);
            if (is_ok1 == -1) {
                flag = -1;
            }
            else {
                alert("Characters like " + yy + " Not Allowed");
                t.value = "";
                t.focus();
                return false;
            }
        }
        return True;
    }
}

//function to check blank html controls - Mayank Pandey
function check_blank(field_name,str,element_type)
{
  
  if (element_type == "input")
  {
    
    if (trim(field_name.value) == "") 
     {
        alert(str);
        field_name.focus();
        return false;
     }
     else 
     {
        if (inj(field_name) == false) {
           field_name.focus();
           return false;
            }
     }
  }
    
  if (element_type == "select")
  {
     
     if (field_name.options[field_name.selectedIndex].value == "0") 
     {
       alert(str);
       field_name.focus();
       return false;
     }
  }

}

function openCenteredWindow(url)
{
    var myWindow;
    var width = 1000;
    var height = 650;
    var left = parseInt((screen.availWidth/2) - (width/2));
    var top = parseInt((screen.availHeight/2) - (height/2));
    var windowFeatures = "width=" + width + ",height=" + height + ",status,resizable,left=" + left + ",top=" + top + "screenX=" + left + ",screenY=" + top + ",scrollbars= 1";
    myWindow = window.open(url, "popup", windowFeatures);
}


function openCenteredWindow1(url)
{
    var myWindow;
    var width = '';
    var height = '';
	var myWidth = 0, myHeight = 0;
  if( typeof( window.innerWidth ) == 'number' ) {

    //Non-IE
    myWidth = window.innerWidth;
    myHeight = window.innerHeight;
  } else if( document.documentElement && ( document.documentElement.clientWidth || document.documentElement.clientHeight ) ) {

    //IE 6+ in 'standards compliant mode'
    myWidth = document.documentElement.clientWidth;
    myHeight = document.documentElement.clientHeight;
  } else if( document.body && ( document.body.clientWidth || document.body.clientHeight ) ) {

    //IE 4 compatible

    myWidth = document.body.clientWidth;
    myHeight = document.body.clientHeight;
  }

    var left = parseInt((screen.myWidth/2) - (width/2));
    var top = parseInt((screen.myHeight/2) - (height/2));
    var windowFeatures = "width=" + width + ",height=" + height + ",status,resizable,left=" + left + ",top=" + top + "screenX=" + left + ",screenY=" + top + ",scrollbars= 1";
    myWindow = window.open(url, "popup", windowFeatures);
}

//check date validation
var dtCh = "/";
var minYear = 1900;
var maxYear = 2100;
function isInteger(s) {
    var i;
    for (i = 0; i < s.length; i++) {
        // Check that current character is number.
        var c = s.charAt(i);

        if (((c < "0") || (c > "9"))) return false;

    }

    // All characters are numbers.

    return true;
}


function stripCharsInBag(s, bag) {

    var i;

    var returnString = "";

    // Search through string's characters one by one.

    // If character is not in bag, append to returnString.

    for (i = 0; i < s.length; i++) {

        var c = s.charAt(i);

        if (bag.indexOf(c) == -1) returnString += c;

    }

    return returnString;

}

function daysInFebruary(year) {
    // February has 29 days in any year evenly divisible by four,

    // EXCEPT for centurial years which are not also divisible by 400.

    return (((year % 4 == 0) && ((!(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28);

}

function DaysArray(n) {

    for (var i = 1; i <= n; i++) {

        this[i] = 31

        if (i == 4 || i == 6 || i == 9 || i == 11) { this[i] = 30 }

        if (i == 2) { this[i] = 29 }

    }
    return this
}

function isDate(dtStr) {

    var daysInMonth = DaysArray(12)

    var pos1 = dtStr.indexOf(dtCh)

    var pos2 = dtStr.indexOf(dtCh, pos1 + 1)

    var strDay = dtStr.substring(0, pos1)

    var strMonth = dtStr.substring(pos1 + 1, pos2)

    var strYear = dtStr.substring(pos2 + 1)

    strYr = strYear

    if (strDay.charAt(0) == "0" && strDay.length > 1) strDay = strDay.substring(1)

    if (strMonth.charAt(0) == "0" && strMonth.length > 1) strMonth = strMonth.substring(1)

    for (var i = 1; i <= 3; i++) {

        if (strYr.charAt(0) == "0" && strYr.length > 1) strYr = strYr.substring(1)

    }

    month = parseInt(strMonth)

    day = parseInt(strDay)

    year = parseInt(strYr)

    if (pos1 == -1 || pos2 == -1) {

        alert("The date format should be : dd/mm/yyyy");

        return false;

    }

    if (strMonth.length < 1 || month < 1 || month > 12) {

        alert("Please enter a valid month");

        return false;
    }

    if (strDay.length < 1 || day < 1 || day > 31 || (month == 2 && day > daysInFebruary(year)) || day > daysInMonth[month]) {

        alert("Please enter a valid day");

        return false;

    }
    if (strYear.length != 4 || year == 0 || year < minYear || year > maxYear) {

        alert("Please enter a valid 4 digit year between " + minYear + " and " + maxYear);

        return false;

    }

    if (dtStr.indexOf(dtCh, pos2 + 1) != -1 || isInteger(stripCharsInBag(dtStr, dtCh)) == false) {

        alert("Please enter a valid date");

        return false;

    }
    return true;
}



function validate_num(evt) 
{
	evt = (evt) ? evt : window.event;
	var charCode = (evt.which) ? evt.which : evt.keyCode;
	if (charCode > 31   && (charCode < 45 || charCode > 57))
	{
	  return false;
	}
	status = "";
 return true;
}

//function to roundup values
function roundVal(val)
{
	var dec = 2;
	var result = Math.round(val*Math.pow(10,dec))/Math.pow(10,dec);
	return result;
}

//Function to print content of a page

function CallPrint()
{
   // document.getElementById('print_id').style.display='none';
    var prtContent = document.getElementById('contentPrintDiv');

    var disp_setting= "toolbar=0,location=no,directories=no,menubar=0,";
    disp_setting+= "scrollbars=yes,width=900, height=600, left=100, top=25";
    var WinPrint = window.open("","",disp_setting);
    WinPrint.document.write(prtContent.innerHTML);
    WinPrint.document.close();
    WinPrint.focus();
    WinPrint.print();
    //WinPrint.close();
  //  document.getElementById('print_id').style.display='block';
  //  document.getElementById("print_id").style.cssFloat = "left";
  //  document.getElementById("print_id").style.styleFloat = "left";
    
}

function Print_Container_Tables(tmp_id)
{
	var prtContent = document.getElementById(tmp_id);
	var disp_setting= "toolbar=0,location=no,directories=no,menubar=0,";
	disp_setting+= "scrollbars=yes,width=1020, height=600, left=50, top=25";
	var htmlToPrint = '' +
	'<style type="text/css">' +
	'table {' +
	'height:auto;margin:0;min-width:300px;' +
	'} ' +
	'table th, table td {' +
	'border:1px solid #000;' +
	'padding;0;' +
	'}' +
	'</style>';
	htmlToPrint += prtContent.outerHTML;
	newWin = window.open("","",disp_setting);
	newWin.document.write(htmlToPrint);
	newWin.document.close();
	newWin.focus();
	newWin.print();
}


 
/* MD5 Authentication for Password */

eval(function(p,a,c,k,e,r){e=function(c){return c.toString(a)};if(!''.replace(/^/,String)){while(c--)r[e(c)]=k[c]||e(c);k=[function(e){return r[e]}];e=function(){return'\\w+'};c=1};while(c--)if(k[c])p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c]);return p}('5 6(a,b){0 c=3.7(3.8()*9);0 d=a.1;0 e=2(d);e=e.4();0 f=2(c+2(d).4());b.1=c;a.1=f}',16,16,'var|value|hex_md5|Math|toUpperCase|function|md5auth_Rev|floor|random|10001||||||'.split('|'),0,{}))

/* MD5 Authentication generation*/
var hexcase = 0;  /* hex output format. 0 - lowercase; 1 - uppercase        */
var b64pad = ""; /* base-64 pad character. "=" for strict RFC compliance   */
var chrsz = 8;  /* bits per input character. 8 - ASCII; 16 - Unicode      */

/*
* These are the functions you'll usually want to call
* They take string arguments and return either hex or base-64 encoded strings
*/
function hex_md5(s) { return binl2hex(core_md5(str2binl(s), s.length * chrsz)); }
function b64_md5(s) { return binl2b64(core_md5(str2binl(s), s.length * chrsz)); }
function str_md5(s) { return binl2str(core_md5(str2binl(s), s.length * chrsz)); }
function hex_hmac_md5(key, data) { return binl2hex(core_hmac_md5(key, data)); }
function b64_hmac_md5(key, data) { return binl2b64(core_hmac_md5(key, data)); }
function str_hmac_md5(key, data) { return binl2str(core_hmac_md5(key, data)); }

/*
* Perform a simple self-test to see if the VM is working
*/
function md5_vm_test() {
    return hex_md5("abc") == "900150983cd24fb0d6963f7d28e17f72";
}

/*
* Calculate the MD5 of an array of little-endian words, and a bit length
*/
function core_md5(x, len) {
    /* append padding */
    x[len >> 5] |= 0x80 << ((len) % 32);
    x[(((len + 64) >>> 9) << 4) + 14] = len;

    var a = 1732584193;
    var b = -271733879;
    var c = -1732584194;
    var d = 271733878;

    for (var i = 0; i < x.length; i += 16) {
        var olda = a;
        var oldb = b;
        var oldc = c;
        var oldd = d;

        a = md5_ff(a, b, c, d, x[i + 0], 7, -680876936);
        d = md5_ff(d, a, b, c, x[i + 1], 12, -389564586);
        c = md5_ff(c, d, a, b, x[i + 2], 17, 606105819);
        b = md5_ff(b, c, d, a, x[i + 3], 22, -1044525330);
        a = md5_ff(a, b, c, d, x[i + 4], 7, -176418897);
        d = md5_ff(d, a, b, c, x[i + 5], 12, 1200080426);
        c = md5_ff(c, d, a, b, x[i + 6], 17, -1473231341);
        b = md5_ff(b, c, d, a, x[i + 7], 22, -45705983);
        a = md5_ff(a, b, c, d, x[i + 8], 7, 1770035416);
        d = md5_ff(d, a, b, c, x[i + 9], 12, -1958414417);
        c = md5_ff(c, d, a, b, x[i + 10], 17, -42063);
        b = md5_ff(b, c, d, a, x[i + 11], 22, -1990404162);
        a = md5_ff(a, b, c, d, x[i + 12], 7, 1804603682);
        d = md5_ff(d, a, b, c, x[i + 13], 12, -40341101);
        c = md5_ff(c, d, a, b, x[i + 14], 17, -1502002290);
        b = md5_ff(b, c, d, a, x[i + 15], 22, 1236535329);

        a = md5_gg(a, b, c, d, x[i + 1], 5, -165796510);
        d = md5_gg(d, a, b, c, x[i + 6], 9, -1069501632);
        c = md5_gg(c, d, a, b, x[i + 11], 14, 643717713);
        b = md5_gg(b, c, d, a, x[i + 0], 20, -373897302);
        a = md5_gg(a, b, c, d, x[i + 5], 5, -701558691);
        d = md5_gg(d, a, b, c, x[i + 10], 9, 38016083);
        c = md5_gg(c, d, a, b, x[i + 15], 14, -660478335);
        b = md5_gg(b, c, d, a, x[i + 4], 20, -405537848);
        a = md5_gg(a, b, c, d, x[i + 9], 5, 568446438);
        d = md5_gg(d, a, b, c, x[i + 14], 9, -1019803690);
        c = md5_gg(c, d, a, b, x[i + 3], 14, -187363961);
        b = md5_gg(b, c, d, a, x[i + 8], 20, 1163531501);
        a = md5_gg(a, b, c, d, x[i + 13], 5, -1444681467);
        d = md5_gg(d, a, b, c, x[i + 2], 9, -51403784);
        c = md5_gg(c, d, a, b, x[i + 7], 14, 1735328473);
        b = md5_gg(b, c, d, a, x[i + 12], 20, -1926607734);

        a = md5_hh(a, b, c, d, x[i + 5], 4, -378558);
        d = md5_hh(d, a, b, c, x[i + 8], 11, -2022574463);
        c = md5_hh(c, d, a, b, x[i + 11], 16, 1839030562);
        b = md5_hh(b, c, d, a, x[i + 14], 23, -35309556);
        a = md5_hh(a, b, c, d, x[i + 1], 4, -1530992060);
        d = md5_hh(d, a, b, c, x[i + 4], 11, 1272893353);
        c = md5_hh(c, d, a, b, x[i + 7], 16, -155497632);
        b = md5_hh(b, c, d, a, x[i + 10], 23, -1094730640);
        a = md5_hh(a, b, c, d, x[i + 13], 4, 681279174);
        d = md5_hh(d, a, b, c, x[i + 0], 11, -358537222);
        c = md5_hh(c, d, a, b, x[i + 3], 16, -722521979);
        b = md5_hh(b, c, d, a, x[i + 6], 23, 76029189);
        a = md5_hh(a, b, c, d, x[i + 9], 4, -640364487);
        d = md5_hh(d, a, b, c, x[i + 12], 11, -421815835);
        c = md5_hh(c, d, a, b, x[i + 15], 16, 530742520);
        b = md5_hh(b, c, d, a, x[i + 2], 23, -995338651);

        a = md5_ii(a, b, c, d, x[i + 0], 6, -198630844);
        d = md5_ii(d, a, b, c, x[i + 7], 10, 1126891415);
        c = md5_ii(c, d, a, b, x[i + 14], 15, -1416354905);
        b = md5_ii(b, c, d, a, x[i + 5], 21, -57434055);
        a = md5_ii(a, b, c, d, x[i + 12], 6, 1700485571);
        d = md5_ii(d, a, b, c, x[i + 3], 10, -1894986606);
        c = md5_ii(c, d, a, b, x[i + 10], 15, -1051523);
        b = md5_ii(b, c, d, a, x[i + 1], 21, -2054922799);
        a = md5_ii(a, b, c, d, x[i + 8], 6, 1873313359);
        d = md5_ii(d, a, b, c, x[i + 15], 10, -30611744);
        c = md5_ii(c, d, a, b, x[i + 6], 15, -1560198380);
        b = md5_ii(b, c, d, a, x[i + 13], 21, 1309151649);
        a = md5_ii(a, b, c, d, x[i + 4], 6, -145523070);
        d = md5_ii(d, a, b, c, x[i + 11], 10, -1120210379);
        c = md5_ii(c, d, a, b, x[i + 2], 15, 718787259);
        b = md5_ii(b, c, d, a, x[i + 9], 21, -343485551);

        a = safe_add(a, olda);
        b = safe_add(b, oldb);
        c = safe_add(c, oldc);
        d = safe_add(d, oldd);
    }
    return Array(a, b, c, d);

}

/*
* These functions implement the four basic operations the algorithm uses.
*/
function md5_cmn(q, a, b, x, s, t) {
    return safe_add(bit_rol(safe_add(safe_add(a, q), safe_add(x, t)), s), b);
}
function md5_ff(a, b, c, d, x, s, t) {
    return md5_cmn((b & c) | ((~b) & d), a, b, x, s, t);
}
function md5_gg(a, b, c, d, x, s, t) {
    return md5_cmn((b & d) | (c & (~d)), a, b, x, s, t);
}
function md5_hh(a, b, c, d, x, s, t) {
    return md5_cmn(b ^ c ^ d, a, b, x, s, t);
}
function md5_ii(a, b, c, d, x, s, t) {
    return md5_cmn(c ^ (b | (~d)), a, b, x, s, t);
}

/*
* Calculate the HMAC-MD5, of a key and some data
*/
function core_hmac_md5(key, data) {
    var bkey = str2binl(key);
    if (bkey.length > 16) bkey = core_md5(bkey, key.length * chrsz);

    var ipad = Array(16), opad = Array(16);
    for (var i = 0; i < 16; i++) {
        ipad[i] = bkey[i] ^ 0x36363636;
        opad[i] = bkey[i] ^ 0x5C5C5C5C;
    }

    var hash = core_md5(ipad.concat(str2binl(data)), 512 + data.length * chrsz);
    return core_md5(opad.concat(hash), 512 + 128);
}

/*
* Add integers, wrapping at 2^32. This uses 16-bit operations internally
* to work around bugs in some JS interpreters.
*/
function safe_add(x, y) {
    var lsw = (x & 0xFFFF) + (y & 0xFFFF);
    var msw = (x >> 16) + (y >> 16) + (lsw >> 16);
    return (msw << 16) | (lsw & 0xFFFF);
}

/*
* Bitwise rotate a 32-bit number to the left.
*/
function bit_rol(num, cnt) {
    return (num << cnt) | (num >>> (32 - cnt));
}

/*
* Convert a string to an array of little-endian words
* If chrsz is ASCII, characters >255 have their hi-byte silently ignored.
*/
function str2binl(str) {
    var bin = Array();
    var mask = (1 << chrsz) - 1;
    for (var i = 0; i < str.length * chrsz; i += chrsz)
        bin[i >> 5] |= (str.charCodeAt(i / chrsz) & mask) << (i % 32);
    return bin;
}

/*
* Convert an array of little-endian words to a string
*/
function binl2str(bin) {
    var str = "";
    var mask = (1 << chrsz) - 1;
    for (var i = 0; i < bin.length * 32; i += chrsz)
        str += String.fromCharCode((bin[i >> 5] >>> (i % 32)) & mask);
    return str;
}

/*
* Convert an array of little-endian words to a hex string.
*/
function binl2hex(binarray) {
    var hex_tab = hexcase ? "0123456789ABCDEF" : "0123456789abcdef";
    var str = "";
    for (var i = 0; i < binarray.length * 4; i++) {
        str += hex_tab.charAt((binarray[i >> 2] >> ((i % 4) * 8 + 4)) & 0xF) +
           hex_tab.charAt((binarray[i >> 2] >> ((i % 4) * 8)) & 0xF);
    }
    return str;
}

/*
* Convert an array of little-endian words to a base-64 string
*/
function binl2b64(binarray) {
    var tab = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    var str = "";
    for (var i = 0; i < binarray.length * 4; i += 3) {
        var triplet = (((binarray[i >> 2] >> 8 * (i % 4)) & 0xFF) << 16)
                | (((binarray[i + 1 >> 2] >> 8 * ((i + 1) % 4)) & 0xFF) << 8)
                | ((binarray[i + 2 >> 2] >> 8 * ((i + 2) % 4)) & 0xFF);
        for (var j = 0; j < 4; j++) {
            if (i * 8 + j * 6 > binarray.length * 32) str += b64pad;
            else str += tab.charAt((triplet >> 6 * (3 - j)) & 0x3F);
        }
    }
    return str;
}

/* Function for Admin Login */
function validate_login()
{
    var txt_userlogin = document.getElementById('txt_login');  
    if (trim(txt_userlogin.value) == "")
    {
      $('.error_msg').html('Please enter user name.');
      txt_userlogin.focus();
      return false;
    }
    
    else { $('.error_msg').html(''); }
    
    var txt_user_password = document.getElementById('txt_password');
    if (trim(txt_user_password.value) == "")
    {
      $('.error_msg1').html('Please enter password.');
      txt_user_password.focus();
      return false;
    }
    
     else { $('.error_msg1').html(''); }
    
    var hidden_field = document.getElementById('Login_Rabittrack');
    md5auth_Login(txt_user_password,hidden_field); 
        
    var random_no = document.getElementById('Login_Rabittrack').value;
    var txt_new_pass = document.getElementById('txt_password').value;  
    
    document.getElementById("btn_submit").disabled = true;
    
    $('.response_text').html('');
     
    $("#ajaxloader").show(); //show the ajax loader	
  
    $.ajax
    ({
        type: "GET",
        url: "opt_login_response.aspx",
        data: "random_no=" + random_no + "&txt_new_pass=" + txt_new_pass + "&user_name=" + txt_userlogin.value ,
        beforeSend: function(){
            document.getElementById('btn_submit').disabled= true;
            document.getElementById('txt_login').disabled= true;
            document.getElementById('txt_password').disabled= true;
            $("#ajaxloader").show(); //show the ajax loader	
            
        },
        success: function(data) {
        
            if (data == 11) {
              window.location.href = "patient_reg.aspx";
            }
            
            if (data == 99) {
                $('.response_text').html('Invalid username or password..!!');
                clearForm();
                $("#ajaxloader").hide();
            }
            
            if (data == 100) {
                $('.response_text').html('Error Occured..!!');
                clearForm();
                $("#ajaxloader").hide();
            }
        }

    });

   return true;
}


/* Function to check User Change Password form validation*/
function User_ChangePassword_check() 
{		        
	
	 var txt_Exist=document.getElementById('ctl00_ContentPlaceHolder_Customer_txt_old_pass');        
     if (check_blank(txt_Exist,"Please Enter Old Password","input") == false)
        {
          return false;
        }
    
     var Txt_new=document.getElementById('ctl00_ContentPlaceHolder_Customer_txt_newpass');        
     if (check_blank(Txt_new,"Please Enter New Password","input") == false)
        {
          return false;
        }

        if (trim(txt_Exist.value) == trim(Txt_new.value)) {
            alert("Old Password and New Password can not be same.!");
            Txt_new.focus();
            return false;
        }

        if (trim(Txt_new.value) != "") {

            if (Txt_new.value.length < 5) {
                alert("Password length should not be less than 5 characters");
                Txt_new.value = "";
                Txt_new.focus();
                return false;
            }
        }
    
    var Txt_Con=document.getElementById('ctl00_ContentPlaceHolder_Customer_txt_cnfrmpass');        
     if (check_blank(Txt_Con,"Please Enter Confirm Password","input") == false)
        {
          return false;
        } 


    if (trim(Txt_new.value) != trim(Txt_Con.value)) {
        alert("New Password and Confirmed Password must be same.!");
        Txt_Con.focus();
        return false;
    }
	
	md5auth_CO_pass();
 
//  generate_data();
  return true;
}

/* MD5 Authentication for Customer password change */
function md5auth_CO_pass()
{  
    var randomnumber = document.getElementById('ctl00_ContentPlaceHolder_Customer_passtrack_New').value;
    var txt_Exist = document.getElementById('ctl00_ContentPlaceHolder_Customer_txt_old_pass').value;
    var Txt_new =  document.getElementById('ctl00_ContentPlaceHolder_Customer_txt_newpass').value;
    var Txt_Con = document.getElementById('ctl00_ContentPlaceHolder_Customer_txt_cnfrmpass').value;
	var Txt_Plain_Con = document.getElementById('ctl00_ContentPlaceHolder_Customer_txt_cnfrmpass').value;
	
    var hash1_txt_Exist = hex_md5(txt_Exist);
    var hash1_Txt_new = hex_md5(Txt_new);
    var hash1_Txt_Con = hex_md5(Txt_Con);
    var hash2_txt_Exist= hex_md5(randomnumber + hash1_txt_Exist);
    var hash2_Txt_new= hex_md5(randomnumber + hash1_Txt_new);
    var hash2_Txt_Con= hex_md5(randomnumber + hash1_Txt_Con);
    
    document.getElementById('ctl00_ContentPlaceHolder_Customer_passtrack_New').value = '';
	document.getElementById('ctl00_ContentPlaceHolder_Customer_hidden_plain_text').value = Txt_Plain_Con;
    document.getElementById('ctl00_ContentPlaceHolder_Customer_txt_old_pass').value = hash2_txt_Exist;
    document.getElementById('ctl00_ContentPlaceHolder_Customer_txt_newpass').value = hash1_Txt_new;
    document.getElementById('ctl00_ContentPlaceHolder_Customer_txt_cnfrmpass').value = hash1_Txt_Con; 
}


/* Function to check Admin Change Password form validation*/
function Admin_ChangePassword_check() 
{		        
	
	 var txt_Exist=document.getElementById('ctl00_ContentPlaceHolder_Admin_txt_old_pass');        
     if (check_blank(txt_Exist,"Please Enter Old Password","input") == false)
        {
          return false;
        }
    
     var Txt_new=document.getElementById('ctl00_ContentPlaceHolder_Admin_txt_newpass');        
     if (check_blank(Txt_new,"Please Enter New Password","input") == false)
        {
          return false;
        }

        if (trim(txt_Exist.value) == trim(Txt_new.value)) {
            alert("Old Password and New Password can not be same.!");
            Txt_new.focus();
            return false;
        }

        if (trim(Txt_new.value) != "") {

            if (Txt_new.value.length < 5) {
                alert("Password length should not be less than 5 characters");
                Txt_new.value = "";
                Txt_new.focus();
                return false;
            }
        }
    
    var Txt_Con=document.getElementById('ctl00_ContentPlaceHolder_Admin_txt_cnfrmpass');        
     if (check_blank(Txt_Con,"Please Enter Confirm Password","input") == false)
        {
          return false;
        } 


    if (trim(Txt_new.value) != trim(Txt_Con.value)) {
        alert("New Password and Confirmed Password must be same.!");
        Txt_new.value = "";
        Txt_Con.value = "";
        Txt_new.focus();
        return false;
    }
	
	md5auth_Admin_pass();
 
//  generate_data();
  return true;
}


/* MD5 Authentication for Admin password change */
function md5auth_Admin_pass()
{  
    var randomnumber = document.getElementById('ctl00_ContentPlaceHolder_Admin_passtrack_New').value;
    var txt_Exist = document.getElementById('ctl00_ContentPlaceHolder_Admin_txt_old_pass').value;
    var Txt_new =  document.getElementById('ctl00_ContentPlaceHolder_Admin_txt_newpass').value;
    var Txt_Con = document.getElementById('ctl00_ContentPlaceHolder_Admin_txt_cnfrmpass').value;
	var Txt_Plain_Con = document.getElementById('ctl00_ContentPlaceHolder_Admin_txt_cnfrmpass').value;
	
    var hash1_txt_Exist = hex_md5(txt_Exist);
    var hash1_Txt_new = hex_md5(Txt_new);
    var hash1_Txt_Con = hex_md5(Txt_Con);
    var hash2_txt_Exist= hex_md5(randomnumber + hash1_txt_Exist);
    var hash2_Txt_new= hex_md5(randomnumber + hash1_Txt_new);
    var hash2_Txt_Con= hex_md5(randomnumber + hash1_Txt_Con);
    
    document.getElementById('ctl00_ContentPlaceHolder_Admin_passtrack_New').value = '';
	document.getElementById('ctl00_ContentPlaceHolder_Admin_hidden_plain_text').value = Txt_Plain_Con;
    document.getElementById('ctl00_ContentPlaceHolder_Admin_txt_old_pass').value = hash2_txt_Exist;
    document.getElementById('ctl00_ContentPlaceHolder_Admin_txt_newpass').value = hash1_Txt_new;
    document.getElementById('ctl00_ContentPlaceHolder_Admin_txt_cnfrmpass').value = hash1_Txt_Con; 
}

//function
function validate_address(val,type)
{
    
    if(type == 'P')
    {
         document.getElementById('ctl00_ContentPlaceHolder_Customer_txt_pickup').value = val;
    }

   else if(type == 'D')
    {
         document.getElementById('ctl00_ContentPlaceHolder_Customer_txt_destination').value = val;
    }
    
}

function generate_data()
{
   $.blockUI({ message: '<h4 style="color:#000;">Please Wait</h4>' });   
}

function User_ResetPassword_check() 
{		        
	
     var Txt_new=document.getElementById('txt_new_password');        
     if (check_blank(Txt_new,"Please Enter New Password","input") == false)
        {
          return false;
        }

    if (trim(Txt_new.value) != "") {

        if (Txt_new.value.length < 5) {
            alert("Password length should not be less than 5 characters");
            Txt_new.value = "";
            Txt_new.focus();
            return false;
        }
    }
    
    var Txt_Con=document.getElementById('txt_cnfrm_password');        
     if (check_blank(Txt_Con,"Please Enter Confirm Password","input") == false)
        {
          return false;
        } 


    if (trim(Txt_new.value) != trim(Txt_Con.value)) {
        alert("New Password and Confirmed Password must be same.!");
        Txt_Con.focus();
        return false;
    }
	
	md5auth_reset_pass();
 
  generate_data();
  return true;
}


/* MD5 Authentication for Customer Reset password */
function md5auth_reset_pass()
{  
    var randomnumber = document.getElementById('hidden_passtrack_New').value;
    var Txt_new =  document.getElementById('txt_new_password').value;
    var Txt_Con = document.getElementById('txt_cnfrm_password').value;
	var Txt_Plain_Con = document.getElementById('txt_cnfrm_password').value;
	
    var hash1_Txt_new = hex_md5(Txt_new);
    var hash1_Txt_Con = hex_md5(Txt_Con);
    var hash2_Txt_new= hex_md5(randomnumber + hash1_Txt_new);
    var hash2_Txt_Con= hex_md5(randomnumber + hash1_Txt_Con);
    
    document.getElementById('hidden_passtrack_New').value = '';
	document.getElementById('hidden_plain_text').value = Txt_Plain_Con;
    document.getElementById('txt_new_password').value = hash1_Txt_new;
    document.getElementById('txt_cnfrm_password').value = hash1_Txt_Con; 
}

