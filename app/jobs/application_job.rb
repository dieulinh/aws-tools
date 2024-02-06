class ApplicationJob < ActiveJob::Base
  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # Most jobs are safe to ignore if the underlying records are no longer available
  # discard_on ActiveJob::DeserializationError
  def self.queue_as(queue)
    Shoryuken.register_worker(queue.to_s, ActiveJob::QueueAdapters::ShoryukenAdapter::JobWrapper)
    super
  end
end
