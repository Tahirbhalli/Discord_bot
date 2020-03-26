require 'discordrb'
require 'dotenv'
require_relative 'json_parser.rb'
class Bots
  private

  @bot = nil
  attr_writer :bot

  public

  attr_reader :bot

  def initialize
    secret = Dotenv.load
    @bot = Discordrb::Bot.new token: secret['Tokken'], client_id: 692_445_102_387_363_910
  end

  def msg_reply(msg)
    json = Parser.new
    json.reply msg
  end

  def run_bot
    @bot.message do |event|
      event.respond msg_reply event.content
    end
    @bot.run
  end
end
