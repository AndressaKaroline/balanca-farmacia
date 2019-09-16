require 'simplecov'
SimpleCov.start 'rails'

require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "create a simple person" do
    assert_difference 'Person.all.count', 1 do
      Person.create weight: 53.0, gender: "f"
    end
  end

  test "don't create a person without gender" do
    assert_difference 'Person.all.count', 0 do
      Person.create weight: 53.0
    end
  end

  test "don't create a person without weight" do
    assert_difference 'Person.all.count', 0 do
      Person.create gender: "m"
    end
  end

  test "don't create a person without weight e gender" do
    assert_difference 'Person.all.count', 0 do
      Person.create name: "person", height: "1.60", age: 20, email: "person@123" 
    end
  end

  test "don't create a person with name" do
    assert_difference 'Person.all.count', 0 do
      Person.create name: "person" 
    end
  end

  test "don't create a person with height" do
    assert_difference 'Person.all.count', 0 do
      Person.create height: "1.60" 
    end
  end

  test "don't create a person with age" do
    assert_difference 'Person.all.count', 0 do
      Person.create age: 20 
    end
  end

  test "don't create a person with email" do
    assert_difference 'Person.all.count', 0 do
      Person.create email: "person@123" 
    end
  end
end
