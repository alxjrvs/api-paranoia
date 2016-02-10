class SlackApiFake
  DEFAULT_FAIL = {"ok"=>false, "error"=>"not_authed"}
  @@fail = false

  def self.chat_post_message(data)
    if @@fail
      DEFAULT_FAIL
    else
      {
        "ok" => true,
        "channel" => "",
        "ts" =>"",
        "message" =>{
          "text" => data[:query][:text],
          "type" => "message",
        }
      }
    end
  end
d
  def self.channels_list(data)
    if @@fail
      DEFAULT_FAIL
    else
      {
        "ok" => true,
        "channels" => [
          {
            "id" => "C024BE91L",
            "name" => "fun",
            "created" => 1360782804,
            "creator" => "U024BE7LH",
            "is_archived" => false,
            "is_member" => false,
            "num_members" => 6,
            "topic" => {
              "value" => "Fun times",
              "creator" => "U024BE7LV",
              "last_set" => 1369677212
            },
            "purpose" => {
              "value" => "This channel is for fun",
              "creator" => "U024BE7LH",
              "last_set" => 1360782804
            }
          }
        ]
      }
    end
  end

  def self.fail!
    @@fail = true
  end

  def self.reset!
    @@fail = false
  end
end
