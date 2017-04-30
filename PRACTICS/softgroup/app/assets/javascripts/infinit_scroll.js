$(document).ready(function() {
    var win = $(window);
    var page = 2;

    // Each time the user scrolls
    win.scroll(function() {
        // End of the document reached?
        if ($(document).height() - win.height() == win.scrollTop()) {
          alert('sdsd');
            $.ajax({
                url: "next_page?page="+page+'.js',
                type: 'GET',
                dataType: 'script'
                // success: function(html) {
                //   page++;
                // }
            })
           .done(function( page ) {
              alert( "Data Saved: " + page );
            });
        }
    });
});
