function setCookie(name, value) {
    document.cookie = name + "=" + value;
}

function getCookie(name) {
    var i, x, y, ARRcookies = document.cookie.split(";");
    for (i = 0; i < ARRcookies.length; i++) {
        x = ARRcookies[i].substr(0, ARRcookies[i].indexOf("="));
        y = ARRcookies[i].substr(ARRcookies[i].indexOf("=") + 1);
        x = x.replace(/^\s+|\s+$/g, "");
        if (x == name) {
            return unescape(y);
        }
    }

    return false;
}




if (getCookie("hasMinimumAge") == false) {

    var agePrompt = prompt("What is your age?");

    if (agePrompt >= 18) {
        alert('Welcome!');
        setCookie("hasMinimumAge", "true");
    }
    else {
        alert('Sorry! Come back in a few years!')
        document.location = "http://www.google.com";
    }
}