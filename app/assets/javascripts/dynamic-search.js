$(document).ready(function() {
  $(".select-food-type").change(function(){
    var sel_category = $(".select-food-type").val();
    if (sel_category == "Select a Food Type") {
      setTimeout(function() {
        $(".card-container").removeClass("invisible");
      }, 500);
    }else {
      $(".card-container").addClass("invisible");
      setTimeout(function() {
        $("." + sel_category).parent().removeClass("invisible");
      }, 500);
    }
  });

  $('#btn-form').click(function(e) {
    $(".display-meals").removeClass("invisible");
    window.scrollTo(0,document.body.scrollHeight);
  });
});
