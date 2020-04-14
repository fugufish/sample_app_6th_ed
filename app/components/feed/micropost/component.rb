class Feed::Micropost::Component < ViewComponent::Base
  include UsersHelper
  include SessionsHelper

  with_collection_parameter :micropost

  def initialize(micropost:)
    @micropost = micropost
  end

  private

  attr_reader :micropost
end
