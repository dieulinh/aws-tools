Shoryuken.sqs_client = Aws::SQS::Client.new(
  region: 'us-west-1',
  credentials: Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'],
    ENV['AWS_SECRET_KEY'])
)
