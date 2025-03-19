require 'sidekiq'

class SimpleJob < ApplicationJob
include Sidekiq::Job

  def perform(*args)
    puts 'RRRR: Sidekiq job started: '
  end
end
