jQuery ->
  $("#tweet_<%= @tweet.id %>").text("<%= @tweet.rank %>").effect("highlight", {}, 1000)
