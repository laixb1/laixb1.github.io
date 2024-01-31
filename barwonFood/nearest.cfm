<DOCUTYPE>
    <html>
        <head>
            <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
            <script src="https://maps.googleapis.com/maps/api/js?key=KEY&libraries=places"></script>
            <link rel="stylesheet" href="barwonFoodStyle.css">



            <title>Barwon Food</title>




        </head>
        <style>
            form {

            }
        </style>



        <body>
            




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
                    <div class = "col chosenPage colHeader">
                        <a href="nearest.cfm"> Find your nearest Barwon Food </a>
                    </div>
                    <div class="col colHeader">
                        <a href="about.cfm" >Who We Are</a>
                    </div>
                    <div class="col colHeader">
                        <a href="customers.cfm" >Our Customers</a>
                    </div>
                    <div class="col  colHeader" >
                        <a href="contact.cfm">Leave us a Review</a>
                    </div>

                </div>
                
            </div>

            <div class="container-sm info" >
                <DIV class="row">
                    <div class="col ">
                        <form>

                        
                            <select id='location' name='location' class=' w-100' onchange='map()'>
                                <option value=''>Please Select a Location</option>
                                <option >Moorabool Water Treatmemt Plant</option>
                                <option >Bannockburn Water Treatment Plant</option>
                                <option >Flobond</option>
                                <option >Colac Treatment Plant</option>
                                <option >Barwon Water Headquarters</option>
                                <option>Black Rock Water Reclamation Plant</option>
                                <option>Wudree Boluc Reservoir</option>
                                <option>Forrest Water Treamtment Plant</option>
                            </select>

                        </form>
                    </div>
                    <div class="col">
                        <br>
                        <div class="submit-related" id="googleMaps" style="height:600px; align: center; "></div>
                    </div>
                </DIV>

            </div>


            <script>

                
            var locations = {
                'Moorabool Water Treatmemt Plant': { lat: -37.88700361, lng: 144.1375684, zoom: 15 },
                'Bannockburn Water Treatment Plant': { lat: -38.03425736, lng: 144.1279554, zoom: 15 },
                'Flobond': { lat: -38.05480606, lng: 144.3778943, zoom: 15 },
                'Barwon Water Headquarters': { lat: -38.14666383, lng: 144.3531751, zoom: 15 },
                'Colac Treatment Plant': { lat: -38.33868326035312, lng: 143.5899326960155, zoom: 15 },
                'Black Rock Water Reclamation Plant': { lat: -38.27927529, lng: 144.4158598, zoom: 15 },
                'Wudree Boluc Reservoir': { lat: -38.27257905, lng: 144.0549223, zoom: 15 },
                'Forrest Water Treamtment Plant': { lat: -38.52776361, lng: 143.7137298, zoom: 15 }
            };

            var defaultLocation = { lat: -38.14787772245411, lng: 144.35552326613308 };
            

            function map() {
                var selectedLocation = document.getElementById('location').value;
                var mapProp = locations[selectedLocation] || { lat: defaultLocation.lat, lng: defaultLocation.lng, zoom: 5 };
                var map = new google.maps.Map(document.getElementById('googleMaps'), {
                    center: new google.maps.LatLng(mapProp.lat, mapProp.lng),
                    zoom: 15,
                    
                });

                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(mapProp.lat, mapProp.lng),
                    map: map,
                });


            }

            map();
            </script>




        </body>




    </html>
</DOCUTYPE>