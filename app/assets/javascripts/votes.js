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
    });
  });
}


