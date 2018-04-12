function ShowImagePreview(imageUploader, previewImage) {
    if (imageUploader.files && imageUploader.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $(previewImage).attr('src', e.target.result);
        }
        reader.readAsDataURL(imageUploader.files[0]);
    }
}







function Greeting() {
    var x = document.getElementById("welcome");
    var userResponse = prompt('What is your name?');
    x.getElementsByTagName('p')[0].innerText = 'Welcome ' + userResponse + ',';
}

function mouseOver(x) {
    document.getElementById(x).style.color = "red";
    document.getElementById(x).style.fontSize = "30px";
}

function mouseOut(x) {
    document.getElementById(x).style.color = "white";
    document.getElementById(x).style.fontSize = "20px";
}

function Redirect(x) {
    var confirmButton = document.getElementById(x);
    var userResponse = confirm('You are about to leave this site. If you want to stay, please select cancel.');
    var displayContainer = document.getElementById('confirmResponse');
    var displayMessage = '';
  
    if (userResponse) {
        var win = window.open("https://www.google.com", '_blank');
        win.focus();
    }
}

function Click(x) {
    document.getElementById(x);
    x.innerText = "Created By Julian Harrell";
}

function Resize() {
    document.getElementById("resize").innerHTML = "Whoa Nelly!!";

}

function scroll() {
    document.getElementById("resize").innerHTML = " ";

}



function luckyNumbers() {
    var randNum = new Array();
    for (i = 0; i < 6; i++) {
        var num = Math.floor(Math.random() * 85) + 1;
        randNum.push(num);
    }
    alert("Your Lucky Numbers are " + randNum);
}

function Display(x,y) {
    xp = document.getElementById(x);
    yp = document.getElementById(y);

    if (xp.style.display == "none") {

        xp.style.display = "block";
        yp.innerText = "Hide Bottoms";
    }
    else
    {
        xp.style.display = "none";
        yp.innerText = "Display All Bottoms";
    }
    
}


function typearray() {
    var typeArray = new Array();
    x = document.getElementsByClassName('bot');
    y = document.getElementsByClassName('jeans');
    z = document.getElementsByClassName('item-col');
    for (var i = 0; i < x.length; i++)
    {
        if (x[i].innerText === "Jeans") {
            typeArray.push(y[i].innerText);
            z[i].style.display = "block";
        }
        else {
            z[i].style.display = "none";
        }
    }
    console.log(typeArray);
   
}
