require 'json'
class Parser
  attr_reader :data
  def initialize
    @data = File.read('story.json')
  end

  def reply(msg)
    json = JSON.parse(@data)
    json['data'].each do |i|
      i['turns'].each do |j|
        next if j['user'] != msg

        j['operations'].each do |k|
          return k['action']
        end
      end
    end
    'I cant understand it you can Write back to me on my email - tahirbhalli@gmail.com. Have a nice day! :)'
  end
end
