$(document).ready(function() {
  displayUpvotes();
});

var displayUpvotes = function() {
  $(".vote-link").on("click", function(event) {
    event.preventDefault();
    var voteLink = $(this)
    var url = $(this).attr("href");
    var request = $.ajax({
      url: url,
      type: "POST",
      dataType: "json"
    });
    request.done(function(response) {
      $("#vote-count-" + response.id).html(response.text);
      if($("#arugula-" + response.id).children().attr("src") == "/assets/arugula-green.png") {
        $("#arugula-" + response.id).children().attr("src", "/assets/arugula.png");
          console.log($("#arugula-" + response.id).children().attr("src"))
      } else {
        $("#arugula-" + response.id).children().attr("src", "/assets/arugula-green.png");
        console.log($("#arugula-" + response.id).children().attr("src"))
      }
      // if($("#arugula-" + response.id).children().attr("src")) {
      //   $("#arugula-" + response.id).children().attr("src", "/assets/arugula.png");
      // } else {
      //   $("#arugula-" + response.id).children().attr("src", "/assets/arugula-green.png");
      // }
    });
  });
}


