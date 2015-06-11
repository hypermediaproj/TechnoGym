function getFooter () {
    $(document).ready(function(){
        
          //var $_GET = getUrlVars(); //Get parameters
          var send = '';
          
        $.ajax({ // ajax call starts
          url: PHP_AJAX_URL + 'informazioni.php', // JQuery loads serverside.php
          data: send, // Send value of the clicked button
          dataType: 'jsonp', // Choosing a jsonp datatype
        })
        .done(function(data) { // Variable data contains the data we get from serverside
          $('.footer').html(''); // Clear #content div
            
              
              var text = '<div class="left13"><div class="logo_f"><a href="index.html"><img src="images/utils/logo.png" alt="logo" title="logo" class="logo_image" /></a><h1><a href="index.html">Techno Gym</a></h1></div><p>&copy;2014-2015 TechnoGym S.r.l. - TechnoGym.com&reg; &egrave; un marchio registrato. Tutti i diritti riservati.</p></div><div class="left13 fdivider"><h2>I Nostri Servizi</h2><ul class="list"><li>Programma di allenamento tra cui uno -contro-uno ad insegnamento personalizzato.</li><li>Palestra con tutti i tipi di macchine per una forma smagliante.</li><li>Offriamo pacchetti con i nostri personal trainer certificati.</li></ul></div><div class="left13"><h2>Contattaci! </h2><p><strong>Email:</strong> '+data.email+' <br /><strong>Telefono:</strong> ' + data.telefono + '</p><div class="socials"><ul><li><a href="' + data.twitter + '"><img src="images/utils/twitter.png" alt="" title="" border="0"/></a></li><li><a href="' + data.facebook + '"><img src="images/utils/facebook.png" alt="" title="" border="0"/></a></li><li><a href="' + data.google + '"><img src="images/utils/google.png" alt="" title="" border="0"/></a></li></ul></div></div>';
              $('.footer').append(text)
              
        });
        return false; // keeps the page from not refreshing 
    })
};