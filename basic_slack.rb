token = "Slack Token"
message_query = {
  query: {
    token: token,
    message: "message",
    channel: "channel ID"
  }
}
message_response = HTTParty.get("https://slack.com/api/chat.postMessage")

list_query = {
  query: {
    token: token
  }
}
list_response = HTTParty.get("https://slack.com/api/channel.list")
