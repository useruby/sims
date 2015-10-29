# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


if Rails.env.development?
  admin = FactoryGirl.create(:admin, email: 'admin@test.com', password: 'ooC5aeb1waequ3to')
  user = FactoryGirl.create(:user, email: 'user@test.com', password: 'kahgahLuGip2ahy8')

  FactoryGirl.create(:product_01, created_by_id: user.id)
  FactoryGirl.create(:product_02, created_by_id: admin.id)
  FactoryGirl.create(:product_03, created_by_id: admin.id)
end
