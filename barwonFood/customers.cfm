<DOCUTYPE>
    <cfquery name="averageStar" datasource = "frag" >
        SELECT AVG(stars) AS averageStars 
        FROM review
    </cfquery>

    <cfquery name = "reviews" datasource="frag" >
        SELECT name, description, stars, postDate
        FROM review
        ORDER BY postDate DESC
    </cfquery>



    


    <cfset  avgStars = averageStar.averageStars>
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


                .info {
                    background-color:rgb(255, 239, 241);
                    padding-left:40px;
                    
                }

                .subtitle {
                    font-size:40px;
                    padding:20px;
                    font-weight: bold;
                }


                .bi {
                    font-size:3rem;
                    color:rgb(252, 172, 185);
                    
                }
                .small {
                    font-size:2rem;
                    color:rgb(252, 172, 185);
                    
                }
                .grey {
                    color:grey;
                }



            </style>
            <div class="container-sm">
                <div class="row">
                    <img src="pinkLogo.png" style="width:400px;height:80px;margin:auto;">
                </div>
            </div>

            <div class="container-sm text-center">
                <div class="row" id ="header">

                    <div class="col  colHeader" >
                        <a href="index.cfm"> BarwonFood </a>

                    </div>
                    <div class = "col colHeader">
                        <a href="nearest.cfm"> Find your nearest Barwon Food </a>
                    </div>
                    <div class="col colHeader">
                        <a href="about.cfm" >Who We Are</a>
                    </div>
                    <div class="col chosenPage colHeader">
                        <a href="customers.cfm" >Our Customers</a>
                    </div>
                    <div class="col  colHeader" >
                        <a href="contact.cfm">Leave us a Review</a>
                    </div>

                </div>
                
            </div>

            <div class="container-sm info">
                <br><div class = "row subtitle" style="padding:10px">Customer Reviews</div>
                <i class="bi bi-star" id="firstStar" style="padding-left:1px"> </i>
                <i class="bi bi-star" id="secondStar"> </i>
                <i class="bi bi-star" id="thirdStar"> </i>
                <i class="bi bi-star" id="fourthStar"> </i>
                <i class="bi bi-star" id="fifthStar"> </i>
                <p style="display:inline;font-size:30px;padding-left:20px"> Based on <cfoutput>#reviews.recordCount#</cfoutput> reviews</p>
                <hr>


                <cfloop query="reviews" >
                    <br>
                    <cfloop index="starCount" from="1" to="#reviews.stars#">
                        <i class="bi small bi-star-fill"></i>

                    </cfloop>
                    <cfloop index="emptyStarCount" from="1" to='#5 - reviews.stars#'>
                        <i class="bi small bi-star"></i>

                    </cfloop>

                    <p class="grey" style="font-style:italic"><cfoutput>#reviews.name#</cfoutput> on <cfoutput>#dateFormat(reviews.postDate, 'mm/dd/yyyy')#</cfoutput></p>

                    <cfoutput>#reviews.description#</cfoutput>

                    <br><br>

                    <hr>

                </cfloop>
            </div>


            <script>
                var star1 = document.getElementById('firstStar');
                var star2 = document.getElementById('secondStar');
                var star3 = document.getElementById('thirdStar');
                var star4 = document.getElementById('fourthStar');
                var star5 = document.getElementById('fifthStar');

            var num = "<cfoutput>#avgStars#</cfoutput>"

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
            </script>




        </body>




    </html>
</DOCUTYPE>