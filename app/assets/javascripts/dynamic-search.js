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

  $('#chief').click(function(e) {
    setTimeout(function() {
      $(".customer-dash").addClass("invisible");
      $(".chief-dash").addClass("invisible");
      $(".chief-dash").removeClass("invisible");
    }, 500);
    setTimeout(function() {
      window.scrollTo(0,document.body.scrollHeight);
    }, 500);
  });
  $('#customer').click(function(e) {
    setTimeout(function() {
      $(".chief-dash").addClass("invisible");
      $(".customer-dash").addClass("invisible");
      $(".customer-dash").removeClass("invisible");
    }, 500);
    setTimeout(function() {
      window.scrollTo(0,document.body.scrollHeight);
    }, 500);
  });
});
