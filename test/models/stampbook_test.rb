require 'test_helper'

class StampbookTest < ActiveSupport::TestCase
  test "should not save stampbook without name" do
    stampbook = Stampbook.new(stampbook_description: "Testing stampbook")
    assert_not stampbook.save, "Saved stampbook without a name"
  end

  test "should not save stampbook without description" do
    stampbook = Stampbook.new(stampbook_name: "Testing stampbook")
    assert_not stampbook.save, "Saved stampbook without a description"
  end
end
