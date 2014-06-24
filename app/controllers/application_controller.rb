class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  def index3
  end
  def index2
  end
  def index
  end
private

  def waste_action
    p "test"
    return true
  end

  def some_action
  end

end
