module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def current_user
      User.find(request.session[:user_id])
    end
  end
end
