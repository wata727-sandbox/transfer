class FooController < ActionController::Base  
  def new_user
    user = User.first(:conditions => ("username = '#{params[:username]}'"))
    if user.blank?
      render text: user.username
      return
    end

    render text: "test"
  end
end
