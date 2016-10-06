$(document).ready(function() {
  displayUpvotes();
});

var displayUpvotes = function() {
  $(".vote-link").on("click", function(event) {
    event.preventDefault();
    var url = $(this).attr("href");
    var request = $.ajax({
      url: url,
      type: "POST"
    });
    request.done(function(response) {
      console.log(response);
      console.log("request done")
    });
  });
}


