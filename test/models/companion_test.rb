require 'test_helper'

class CompanionTest < ActiveSupport::TestCase
  test "create a simple companion" do
    assert_difference 'Companion.all.count', 1 do
      person = Person.create weight: 53.0, gender: "f"
      Companion.create name: "Maria", nutritionist: true, person_id: person.id
    end
  end

  test "don't create a companion without name" do
    assert_difference 'Companion.all.count', 0 do
      person = Person.create weight: 53.0, gender: "f"
      Companion.create nutritionist: true, person_id: person.id
    end
  end

  test "uniqueness" do
    assert_difference 'Companion.all.count', 1 do
      person = Person.create weight: 53.0, gender: "f"
      Companion.create name: "Maria", nutritionist: true, person_id: person.id
      Companion.create name: "Joana", nutritionist: false, person_id: person.id      
    end
  end
end
