# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
TeachingModule.destroy_all
Seminar.destroy_all
# # Post.destroy_all
Country.destroy_all
# # Comment.destroy_all

c1 = Country.create(country_name: "Latvia")
c2 = Country.create(country_name: "Lithuania")
c3 = Country.create(country_name: "Russia")
c4 = Country.create(country_name: "Spain")
c5 = Country.create(country_name: "Germany")
c6 = Country.create(country_name: "Israel")

u1 = User.create(name: "Anton", surname: "Melbardis", email: "melbardis@gmail.com", password: "password", password_confirmation: "password", phone_number: "26680798", bio: "test bio content", photo: "https://i.imgur.com/jZ4sXuk.png", country_id: c1.id, username: "mant")

u2 = User.create(name: "Irena", surname: "Terauda", email: "itom@gmail.com", password: "password", password_confirmation: "password", phone_number: "26539782", bio: "mamas bio content", photo: "https://i.imgur.com/64Y6Otl.png", country_id: c3.id, username: "irena")

u3 = User.create(name: "Erik", surname: "Melbardis", email: "erikmelbardis@gmail.com", password: "password", password_confirmation: "password", phone_number: "26539744", bio: "eriks bio content", photo: "https://i.imgur.com/MRin4YZ.png", country_id: c1.id, username: "erik")


tm1 = TeachingModule.create(teaching_module_title: "ФП1 первый модуль", teaching_module_description: "лицо, шея, плечевой пояс")

tm2 = TeachingModule.create(teaching_module_title: "ФП2 второй модуль", teaching_module_description: "работа с тазам, животом и нижними конечностями")

tm3 = TeachingModule.create(teaching_module_title: "ФП3 третий модуль", teaching_module_description: "углубленный интегративный курс")

s1 = Seminar.create(seminar_name: "Fascial Plasticity Module 1 in Riga", location_address: "Riga Antonijas street 15", description: "short description on what is going to be covered at seminar", date: "2017-09-15", country_id: c1.id, user_ids: [u1.id, u2.id, u3.id], created_by: u1.id, teaching_module_id: tm1.id)

s2 = Seminar.create(seminar_name: "Fascial Plasticity Module 2 in Riga", location_address: "Riga Antonijas street 15", description: "short description on what is going to be covered at seminar", date: "2017-10-15", country_id: c1.id, user_ids: [u1.id, u2.id, u3.id], created_by: u1.id, teaching_module_id: tm2.id)

s3 = Seminar.create(seminar_name: "Fascial Plasticity Module 3 in Riga", location_address: "Riga Antonijas street 15", description: "short description on what is going to be covered at seminar", date: "2017-11-15", country_id: c1.id, user_ids: [u1.id, u2.id, u3.id], created_by: u1.id, teaching_module_id: tm3.id)


# t1 = TeachingModule.create(module_title: "FP1", module_description: "Seminar 1 description")
#
# t2 = TeachingModule.create(module_title: "FP2", module_description: "Seminar 2 description")
#
# t3 = TeachingModule.create(module_title: "FP3", module_description: "Seminar 3 description")
#
# s1 = Seminar.create()
#
#
#
#   create_table "seminars", force: :cascade do |t|
#     t.string "name"
#     t.text "location"
#     t.text "description"
#     t.integer "date"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end
