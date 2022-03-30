function openloginpanel(){
    document.getElementById('login_back').style.display='flex'
}

function closeloginpanel(){
    var panel = document.getElementById('login_back');

    window.onclick = function(event) {
        if (event.target == panel) {
            panel.style.display = "none";
        }
    }
}

// window.onscroll = function() {myFunction()};
// var navbar = document.getElementById("navbar");
// var sticky = navbar.offsetTop;
// function myFunction() {
//   if (window.pageYOffset >= sticky) {
//     navbar.classList.add("sticky")
//   } else {
//     navbar.classList.remove("sticky");
//   }
// } 

function odloty(){
    document.getElementById('odloty').style.display='flex';
    document.getElementById('przyloty').style.display='none';
    var odloty = new XMLHttpRequest();
    odloty.open("POST","../PHP/odloty.php");
  
    odloty.onload = function() {
      document.getElementById('tablica_loty').innerHTML = this.response;
    };
    odloty.send();
    
    document.getElementById("tablica_btn_d").checked = true;
  
};

function przyloty(){
  document.getElementById('odloty').style.display='none';
  document.getElementById('przyloty').style.display='flex';
  var przyloty = new XMLHttpRequest();
  przyloty.open("POST","../PHP/przyloty.php");

  przyloty.onload = function() {
    document.getElementById("tablica_loty").innerHTML = this.response;
  };
  przyloty.send();
  console.log("przyloty aply")
};

function login(){
  var podmiana = new XMLHttpRequest();
  podmiana.open("post", "logowanie.html")

  podmiana.onload = function() {
    document.getElementById("login_con").innerHTML = this.response;
  };
  podmiana.send();
}
//  
//  poniższe 4 funkcje mogły być zrobione jako jedna ale po kilkunastu próbach bez efektu się poddałęm :(
//

function dp_1(){

  var dp_1 = new XMLHttpRequest();
  dp_1.open("get","./dp_1.html");

  dp_1.onload = function() {
    document.getElementById("dp_main").innerHTML = this.response;
  };
  dp_1.send();
  
  document.getElementById("dp_btn_d").checked = true;
};
function dp_2(){

  var dp_2 = new XMLHttpRequest();
  dp_2.open("get","./dp_2.html");

  dp_2.onload = function() {
    document.getElementById("dp_main").innerHTML = this.response;
  };
  dp_2.send();
};
function dp_3(){

var dp_3 = new XMLHttpRequest();
dp_3.open("get","./dp_3.html");

dp_3.onload = function() {
  document.getElementById("dp_main").innerHTML = this.response;
};
dp_3.send();
};
function dp_4(){

  var dp_4 = new XMLHttpRequest();
  dp_4.open("get","./dp_4.html");

  dp_4.onload = function() {
    document.getElementById("dp_main").innerHTML = this.response;
  };
  dp_4.send();
};

