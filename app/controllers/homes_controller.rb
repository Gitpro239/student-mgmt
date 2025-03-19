class HomesController < ApplicationController
  def index
  end

  def execute_on_button_click
    #  puts 'RRRRR: execute_on_button_click'
    SimpleJob.perform_async('Rajat', 30)
  end
end
