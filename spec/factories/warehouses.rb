FactoryGirl.define do
  factory :main_warehouse, class: Warehouse do
    name 'Main warehouse'
  end

  factory :second_facility, class: Warehouse do
    name 'Second Facility'
  end
end
