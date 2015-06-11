require 'test_helper'


class EventTest < ActiveSupport::TestCase

  test "should not save event without title" do
    @events = Event.new
    assert_not @events.save, "Saved the event without a title"
  end


end
