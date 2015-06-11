
function getHeader(id) {
    $(document).ready(function(){
          var $_GET = getUrlVars(); //Get parameters
          var send = 'nome_pagina=Footer';


        $.ajax({ // ajax call starts
          url: PHP_AJAX_URL + 'header.php', // JQuery loads serverside.php
          data: send, // Send value of the clicked button
          dataType: 'jsonp', // Choosing a JSON datatype
        })
        .done(function(data) { // Variable data contains the data we get from serverside
          $('#header').html(''); // Clear #content div

              var text = '' + data.descrizione;
              $('#header').append(text);
              if(id != null) {
              $('#' + id).addClass('selected');
              }
            
              
            
            if($(window).width()< 767)
            {
                $('.login_section').hide();
                $('#main_menu').append('<li><a href="registrati.html">Registrati</a></li>');
                $('#main_menu').append('<li><a href="login.html">Login</a></li>');
            }

        });
        return false; // keeps the page from not refreshing 
    });
}
