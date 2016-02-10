class Slack
  @@api = SlackApi
  cattr_accessor :api

  def initialize(token)
    @token = token
  end

  def send(message:, to:)
    query = {
      query: {
        token: token,
        channel: to,
        message: message
      }
    }
    api.chat_post_message query
  end

  def list_channels
    query = {
      query: {
        token: token
      }
    }
    api.channels_list query
  end

  private
  attr_reader :token
end
