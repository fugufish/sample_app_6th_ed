class Feed::Micropost::Component < ViewComponent::Base
  def initialize(micropost:)
    @micropost = micropost
  end

  private

  attr_reader :micropost
end
