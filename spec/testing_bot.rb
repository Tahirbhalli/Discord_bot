require_relative '../lib/bot.rb'

describe Bot do
  let(:test_bot) { Bot.new }
  it 'bot class test' do
    expect(test_bot.bot.class).to eq(Discordrb::Bot)
  end

  # these 2 tests can test the json_parser.rb Parser class testing also so we don't need to test json_parser class
  it 'wrong text reply' do
    expect(test_bot.msg_reply('hello5')).to eq('I cant understand it you can Write back to me ' \
    'on my email - tahirbhalli@gmail.com. Have a nice day! :)')
  end
  it 'from story.json msg' do
    expect(test_bot.msg_reply('hello')).to eq('Hello! Happy to see you here!!')
  end
end
