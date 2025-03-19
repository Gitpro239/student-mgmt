class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :before_print_display_message
  after_action :after_print_display_message

  private

  def before_print_display_message
    puts "---------I am an inherited before action filter------------- "
  end
  def after_print_display_message
    puts "============= I am an inherited after action filter =========="
  end
end
