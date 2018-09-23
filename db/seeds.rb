# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin_user = User.create( name: "삼육멋사", email: 'sahmyook@likelion.org', password: '123123', nickname: "삼육 멋사", confirmed_at: Time.now )
admin_user.add_role :admin
member_user=User.create( name: "아기사자", email: 'babylion@likelion.org', password: '123123', nickname: "삼육 아기사자", confirmed_at: Time.now )
member_user.add_role :member
