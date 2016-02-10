class SlackService
  BASE = 'https://slack.com/api'

  def initialize(token)
    @token
  end

  def send_message(message:, to:)
    query = {
      query: {
        token: @token,
        message: message,
        channel: to
      }
    }
    HTTParty.get(BASE + "/chat.postMessage")
  end

  def channels_list
    query = {
      query: {
        token: @token
      }
    }
    HTTParty.get(BASE + "/channels.list")
  end

end
