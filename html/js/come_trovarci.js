function getContent () {
    $(document).ready(function(){
        
          var $_GET = getUrlVars(); //Get parameters
          var send = '';
          
        $.ajax({ // ajax call starts
          url: PHP_AJAX_URL + 'informazioni.php', // JQuery loads serverside.php
          data: send, // Send value of the clicked button
          dataType: 'jsonp', // Choosing a jsonp datatype
        })
        .done(function(data) { // Variable data contains the data we get from serverside
          $('.content').html(''); // Clear #content div
          //INFO ORIENTATIVE
          $('#tree_info').html('<h1><a href="come_trovarci.html">Come trovarci</a></h1>');
            
           
            
              var text = '';
              text += '<div class="left23 left_content"><h2>Mappa</h2><div id ="gmap" class="gmap"></div><div class="form_content"><h2>Lasciaci un messaggio</h2><form id="form1" method="post" action=""><div class="form_top"><div class="form_row_half"><input type="text" class="form_input" name="name" placeholder="Nome"/></div><div class="form_row_half"><input type="text" class="form_input" name="email" placeholder="Email"/></div><div class="form_row"><textarea class="form_textarea" name="comment" placeholder="Tuo messaggio..."></textarea></div></div><div class="form_bottom"><input type="submit" class="form_submit" value="Invia" /></div></form></div></div><div class="left13 sidebar"><h2>Il Nostro Indirizzo</h2><div class="sidebar_blog_entries"><div class="post_small"><img src="images/utils/u39.png" alt="" title="" class="post_thumb" /><p>' + data.indirizzo + '</p></div></div><h2>Come Contattarci</h2><div class="sidebar_blog_entries"><div class="post_small"><a href="mailto:bodybuilding@email.com"><img src="images/utils/icon_contact.png" alt="" title="" class="post_thumb" /></a><h3><div class="red">Email</div></h3><p><a href="mailto:'+ data.email +'">' + data.email + '</a></p></div><div class="post_small"><img src="images/utils/icon_phone.png" alt="" title="" class="post_thumb" /><h3><div class="red">Telefono</div></h3><p>' + data.telefono + '</p></div></div><h2>Social</h2><div class="sidebar_blog_entries"><div class="post_small"><a href="https://it-it.facebook.com/technogym"><img src="images/utils/facebook.png" alt="" title="" class="post_thumb" /></a><h3><div class="red"><a href="' + data.facebook +'">Facebook</a></div></h3><p>Entra nella nostra pagina Facebook!</p></div><div class="post_small"><a href="https://plus.google.com/+TechnogymSpa/about"><img src="images/utils/google.png" alt="" title="" class="post_thumb" /></a><h3><div class="red"><a href="'+ data.google + '">Goggle+</a></div></h3><p>Entra nella nostra pagina Google+!</p></div><div class="post_small"><a href="' + data.twitter + '"><img src="images/utils/twitter.png" alt="" title="" class="post_thumb" /></a><h3><div class="red"><a href="https://twitter.com/technogym">Twitter</a></div></h3><p>Entra nella nostra pagina Twitter!</p></div></div></div><div class="clear"></div>';
            $('.content').append(text);
            //MAP
              var maplace = new Maplace({
                
                locations: [{
                    lat: data.posizione_x, 
                    lon: data.posizione_y,
                    zoom: 15
                }]
            }).Load(); 
              
        });
        return false; // keeps the page from not refreshing 
    })
};

