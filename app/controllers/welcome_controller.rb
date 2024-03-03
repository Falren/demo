class WelcomeController < ApplicationController
  def index
    update_counter
    render plain: "Counter #{current_counter.value}; #{Rails.version}/#{RUBY_VERSION}"
  end

  private

  def current_counter
    @current_counter ||= Counter.find_or_create_by(name: "default")
  end

  def update_counter
    current_counter.increment!(:value)
  end
end
