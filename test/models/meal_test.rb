require 'test_helper'

class MealTest < ActiveSupport::TestCase
  test "create a simple meal" do
    assert_difference 'Meal.all.count', 1 do
      person = Person.create weight: 53.0, gender: "f"
      Meal.create type_meal: "lunch", day_time: "2019-09-20 11:30", person_id: person.id
    end
  end

  test "don't create a meal without type_meal" do
    assert_difference 'Meal.all.count', 0 do
      person = Person.create weight: 53.0, gender: "f"
      Meal.create day_time: "2019-09-20 11:30", person_id: person.id
    end
  end

  test "don't create a meal without day_time" do
    assert_difference 'Meal.all.count', 0 do
      person = Person.create weight: 53.0, gender: "f"
      Meal.create type_meal: "lunch", person_id: person.id
    end
  end

  test "don't create a meal without type_meal and day_time" do
    assert_difference 'Meal.all.count', 0 do
      person = Person.create weight: 53.0, gender: "f"
      Meal.create person_id: person.id
    end
  end
end
