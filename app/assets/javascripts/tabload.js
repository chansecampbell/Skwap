// Error in Foundation jQuery code means tab not auto selected on page load, so had to write this

$(document).ready(function() {


  function fixTabs(callback) {
    var tabHash = location.hash;
    $(tabHash).toggleClass("active");
    var anchorTagToSelect = $("a[href='" + tabHash + "']")
    anchorTagToSelect.parent().toggleClass("active");
    // callback();
  }
   
  function scrollToTop() {
    $('body').scrollTo('0px');
  }

  (function() {
    fixTabs(scrollToTop);
  })();

  $(".tab-title").click(function() {
    var tab = $(this);
    if (!tab.hasClass("active")) {
      var anchor = tab.find("a"); 
      location.href = $(anchor).attr("href");
    }
  })

})