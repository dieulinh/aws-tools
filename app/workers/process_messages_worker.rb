class ProcessMessagesWorker
  include Shoryuken::Worker
  shoryuken_options queue: 'https://sqs.us-east-1.amazonaws.com/869830672968/testq'
  def perform(sqs_msg, body)
    puts sqs_msg, body
  end
end
