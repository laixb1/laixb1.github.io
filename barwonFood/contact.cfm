<DOCUTYPE>
    <html>
        <head>
            <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBgIk25yLiK4j-gPp8EZQ1sQbzUoZyUoIU"></script>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
            <link rel="stylesheet" href="barwonFoodStyle.css">





            <title>Barwon Food</title>




        </head>



        <body>
            <style>
                .name-error, .email-error {
                    color:red;
                    font-size:15px;
                    text-align:left;
                    padding:2px;

                }

                .submit-related {
                    display:none;
                }
                #submit-message {
                    padding-top:150px;
                    font-size:50px;

                }

                #down{
                    color:rgb(255, 130, 130);
                }
                #up {
                    color:rgb(112, 192, 112);

                }
            </style>
           
            <div class="container-sm">
                <div class="row">
                    <img src="pinkLogo.png" style="width:400px;height:80px;margin:auto;"> 
                </div>
            </div>

            <div class="container-sm text-center">
                <div class="row" id ="header">
                    <div class="col colHeader" >
                        BarwonFood

                    </div>
                    <div class = "col colHeader">
                        <a href="nearest.cfm"> Find your nearest Barwon Food </a>
                    </div>
                    <div class="col colHeader">
                        <a href="about.cfm" >Who We Are</a>
                    </div>
                    <div class="col colHeader">
                        <a href="customers.cfm" >Our Customers</a>
                    </div>
                    <div class="col chosenPage colHeader" >
                        <a href="contact.cfm">Leave us a Review</a>
                    </div>

                </div>
                
            </div>

            <div class="container-sm form-related ">
                <div class="row info" >
                    <div class='col'>
                        <form style="text-align:center;" id="contact_form">
                            
                            <p class="subtitle form-related" style="text-align:left">Leave us a Review</p><hr class="form-related">

                            <br>

                            <input class="form-related" type="text" id='fname' name='fname' style='width:100%' placeholder="Name*"><br>

                            <div class="name-error"> <br>  </div>

                            <input class="form-related" type="text" id="email" name="email" style='width:100%' placeholder="Email*"><br>

                            <div class="email-error" > <br></div>

                            <textarea class="form-related" id='description' name="description" style='width:100%' rows='4' placeholder="Comment"></textarea><br><br>

                            <input class="form-related" type="text" name="starRating" id="starRating" style="display:none;">

                    
                            <i class="bi bi-star form-related" id ="firstStar" onmouseover="star(1)" onmouseout="offstar(1)" onclick="starSelect(1)"> </i>
                            <i class="bi bi-star form-related" id = "secondStar" onmouseover="star(2)" onmouseout="offstar(2)"  onclick="starSelect(2)"> </i>
                            <i class="bi bi-star form-related" id= "thirdStar" onmouseover="star(3)" onmouseout="offstar(3)"  onclick="starSelect(3)"> </i>
                            <i class="bi bi-star form-related" id="fourthStar" onmouseover="star(4)" onmouseout="offstar(4)"  onclick="starSelect(4)"> </i>
                            <i class="bi bi-star form-related" id="fifthStar" onmouseover="star(5)" onmouseout="offstar(5)"  onclick="starSelect(5)"> </i>

                            <br><br><br><input class="submit form-related" id="butt"  type="button"  value="Post my Review" style='width:100%'>


                            
                        </form>
                        

                    </div>
                    <div class='col'>
                        <br><br>
                        <img src="platypus.png">
                        
                    </div>
                </div>
            </div>

            <div class="container-sm submit-related">
                <div class="row text-center info">
                    <br><br><strong id="submit-message">Thank you for your feedback!</strong>
                    
                    <p><br>click <a style="display: inline;" href="customers.cfm">here</a> to read other reviews<br><br></p>

                    <p>how did you find your experience here?</p>
                    <div>  <i class="bi bi-hand-thumbs-down" id="down" onmouseover="thumb('down')" onmouseout="offThumb('down')"></i>  
                        <i class="bi bi-hand-thumbs-up" id="up" onmouseover="thumb('up')" onmouseout="offThumb('up')"></i></div>
                    <br><br><br><br><br><br><br><br><br>
                    

                </div>
            </div>
            

            <script>
            var downThumb = document.getElementById('down');
                var upThumb = document.getElementById('up');
            

            if(localStorage.length == 0) {
                localStorage.setItem("hasSubmitted",false);
                localStorage.setItem("thumbPressed",false);
            }

            console.log(localStorage.getItem("hasSubmitted") == "true");

            if(localStorage.getItem("hasSubmitted") == "true") {
                console.log(localStorage.getItem("hasSubmitted"));
                $(".form-related").hide();
                $(".submit-related").show();

            }


            $("#down").click(function(){
                var downJQ = $("#down");
                localStorage.setItem("thumbPressed", true);

                if(downJQ.hasClass("bi-hand-thumbs-down")) {
                    downJQ.addClass("bi-hand-thumbs-down-fill");
                    downJQ.removeClass("bi-hand=thumbs=down");

                }
            }
            )

            $("#up").click(function(){
                var upJQ = $("#up");
                localStorage.setItem("thumbPressed", true);

                if(upJQ.hasClass("bi-hand-thumbs-up")) {
                    upJQ.addClass("bi-hand-thumbs-up-fill");
                    upJQ.removeClass("bi-hand=up=down");

                }
            }
            )
                
            function thumb(direction) {
                console.log(direction);

                if(localStorage.getItem("thumbPressed")== 'true') {
                    return;
                }

                

                

                
                if (direction === 'down') {
                    console.log("down")
                    downThumb.classList.remove("bi-hand-thumbs-down");
                    downThumb.classList.add("bi-hand-thumbs-down-fill");
                } else if (direction === 'up') {
                    upThumb.classList.remove("bi-hand-thumbs-up");
                    upThumb.classList.add("bi-hand-thumbs-up-fill");
                }
            }

            function offThumb(direction) {

                if(localStorage.getItem("thumbPressed")== 'true') {
                    return;
                }
     
                if (direction === 'down') {
                    downThumb.classList.add("bi-hand-thumbs-down");
                    downThumb.classList.remove("bi-hand-thumbs-down-fill");
                } else if (direction === 'up') {
                    upThumb.classList.add("bi-hand-thumbs-up");
                    upThumb.classList.remove("bi-hand-thumbs-up-fill");
                }
            }
                


                
    
                var fnameVal = $('#fname');
                var emailVal = $('#email');
                var fnameError = $('.name-error');
                var emailError = $('.email-error');

                var emailValidation = new RegExp('^\\w[-\\w.]+@([\\w-]+\\.)+[\\w-]{2,4}$');


                $("#fname").change(function(){
                    if(fnameVal.val()) {
                        $('#fname').removeClass("incorrect-input");
                        fnameError.html('<br>');
                    }
                })

                $("#email").change(function(){
                    var isValid = emailValidation.test(emailVal.val());
                    if(isValid) {
                        $('#email').removeClass("incorrect-input");
                        emailError.html('<br>');
                    }
                })

                $("#butt").click(function(){

                    var isValid = emailValidation.test(emailVal.val());



                    if(!fnameVal.val()) {
                        $('#fname').addClass("incorrect-input");
                        fnameError.html("Please enter a valid name");
                

                    }
                    if(!isValid) {
                        $('#email').addClass("incorrect-input");
                        emailError.html("Please enter a valid email");

                    }
                    
                    if (fnameVal && isValid) {
                        $(".form-related").hide();
                        $(".submit-related").show();
                        $.post('ajax.cfm', $('#contact_form').serialize());
                        localStorage.setItem("hasSubmitted",true);
                        console.log(localStorage.getItem("hasSubmitted"));
                        console.log("posted");
                    }
                    

                });
               
              


          

                var isClicked = false;
                var offclick = false;

                

                
                var star1 = document.getElementById('firstStar');
                    var star2 = document.getElementById('secondStar');
                    var star3 = document.getElementById('thirdStar');
                    var star4 = document.getElementById('fourthStar');
                    var star5 = document.getElementById('fifthStar');

                var stars = [star1, star2,star3,star4,star5];

                function starSelect(num) {
                    isClicked = true;
                    document.getElementById("starRating").value = num;
                    console.log("value of starRating select is  " + document.getElementById("starRating").value)

                    emptyStar(num);

                }

                function emptyStar(num) {
                    console.log('clicked '+num);
                    for (var i = 5; i > num;i -- )  {
                        console.log('i is ' +i);
                        if (stars[i-1].classList.contains("bi-star-fill")) {
                            console.log(i + ' is full');
                            stars[i-1].classList.remove("bi-star-fill");
                            stars[i-1].classList.add("bi-star");
                        }
                    }

                    for (var i = 0; i < num;i ++ )  {
                        console.log('i is ' +i);
                        if (stars[i].classList.contains("bi-star")) {
                            stars[i].classList.add("bi-star-fill");
                            stars[i].classList.remove("bi-star");
                        }
                    }


                }

                function star(num) {


                    if (!isClicked) {

                        if(num>=1) {
                            star1.classList.remove('bi-star');
                            star1.classList.add('bi-star-fill');

                        }
                        if(num >= 2) {
                            star2.classList.remove('bi-star');
                            star2.classList.add('bi-star-fill');
                        }
                        if(num >= 3) {
                            star3.classList.remove('bi-star');
                            star3.classList.add('bi-star-fill');
                        }
                        if(num >= 4) {
                            star4.classList.remove('bi-star');
                            star4.classList.add('bi-star-fill');
                        }
                        if(num == 5) {
                            star5.classList.remove('bi-star');
                            star5.classList.add('bi-star-fill');
            
                        }
                    }
                }

                function fillStar(num) {
                    

                    if(num>=1) {
                            star1.classList.remove('bi-star');
                            star1.classList.add('bi-star-fill');
        
                        }
                        if(num >= 2) {
                            star2.classList.remove('bi-star');
                            star2.classList.add('bi-star-fill');
                        }
                        if(num >= 3) {
                            star3.classList.remove('bi-star');
                            star3.classList.add('bi-star-fill');
                        }
                        if(num >= 4) {
                            star4.classList.remove('bi-star');
                            star4.classList.add('bi-star-fill');
                        }
                        if(num == 5) {
                            star5.classList.remove('bi-star');
                            star5.classList.add('bi-star-fill');
            
                        }
                }

                    function offstar(num) {
    

                        if(!isClicked ) {

                        

                            if(num>=1) {
                                star1.classList.remove('bi-star-fill');
                                star1.classList.add('bi-star');
                    
                            }
                            if(num >= 2) {
                                star2.classList.remove('bi-star-fill');
                                star2.classList.add('bi-star');
                            }
                            if(num >= 3) {
                                star3.classList.remove('bi-star-fill');
                                star3.classList.add('bi-star');
                            }
                            if(num >= 4) {
                                star4.classList.remove('bi-star-fill');
                                star4.classList.add('bi-star');
                            }
                            if(num == 5) {
                                star5.classList.remove('bi-star-fill');
                                star5.classList.add('bi-star');
                
                            }
                        }
                }

                

                function enter(idName) {
                    document.getElementById(idName).value="";
                }

            </script>


        </body>




    </html>
</DOCUTYPE>