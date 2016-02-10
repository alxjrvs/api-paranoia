class SlackApi
  include HTTParty
  base_uri 'https://slack.com/api'

  CHANNEL_LIST      = "/channels.list"
  CHAT_POST_MESSAGE = "/chat.postMessage"

  def self.chat_post_message(data)
    get CHAT_POST_MESSAGE, data
  end

  def self.channels_list(data)
    get CHANNEL_LIST, data
  end
end
