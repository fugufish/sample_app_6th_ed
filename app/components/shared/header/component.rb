class Shared::Header::Component < ViewComponent::Base
  def initialize(current_user:, logged_in:)
    @current_user = current_user
    @logged_in = logged_in
  end

  private

  attr_reader :current_user

  def logged_in?
    @logged_in
  end
end
