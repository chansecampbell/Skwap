// Error in Foundation jQuery code means tab not auto selected on page load, so had to write this

$(document).ready(function() {

  var anchorTagToSelect = $("a[href='" + location.hash + "']")
  var tabToSelect = anchorTagToSelect.parent();
  tabToSelect.toggleClass("active");

  var contentToSelect = $(location.hash + "-content");
  contentToSelect.toggleClass("active");
  
  $(".tab-title").click(function() {
    var contentToDisable = $(".content.active");
    contentToDisable.removeClass("active");

    var tab = $(this);
    var anchor = tab.find("a"); 
    location.href = $(anchor).attr("href");
    var contentToSelect = $(location.hash + "-content");
    contentToSelect.addClass("active");
  })

})