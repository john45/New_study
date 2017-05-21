$(document).ready(function() {
  var win = $(window);
  var doc = $(document);
  var page = 2;

  win.scroll(function(){
    if ((win.scrollTop()) >= doc.height() - win.height() ){
      // alert('some');
      console.log('win.scrollTop - '+win.scrollTop+'; doc.height - '+doc.height+'; win.height - '+win.height );
      $.ajax({
          url: "next_page?page="+page+'.js',
          type: 'GET'
      });
      page = page + 1;
    }
  });
});
