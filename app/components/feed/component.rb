class Feed::Component < ViewComponent::Base
  def initialize(microposts:)
    @microposts = microposts
  end

  private

  attr_reader :microposts

  def render?
    microposts.any?
  end
end
