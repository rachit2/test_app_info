class TestWorker
    require 'csv'
    include Sidekiq::Worker
    sidekiq_options retry: false
    def perform()
        p "Hello Worker"
    end

  end