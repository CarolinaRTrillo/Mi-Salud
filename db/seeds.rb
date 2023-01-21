require "open-uri"
Booking.destroy_all
Exam.destroy_all
Habit.destroy_all
Recipe.destroy_all
Report.destroy_all
User.destroy_all

user1 = User.create!(
  email: "franciscogiacchi@outlook.com",
  password: "123456",
  name: "Francisco",
  last_name: "Giacchi",
  address: "Mitre 315",
  weight: "65",
  height: "165",
  date_of_birth: "1989-04-08",
  gender: "male",
  phone_number: "+5493435430718",
  blood_group: "0",
  blood_type: "-"
)
# photo.attach nos hace usar cloudinary: config.active_storage.service = :cloudinary (linea 38 del development.rb)

file = URI.open("https://avatars.githubusercontent.com/u/96851608?v=4")
user1.photo.attach(io: file, filename: "fran.png", content_type: "image/png")
puts "usuario: #{user1.email}"

user2 = User.create!(
  email: "michelle1999madrid@gmail.com",
  password: "123456",
  name: "Michelle",
  last_name: "Madrid",
  address: "Las Heras 2330",
  weight: "65",
  height: "165",
  date_of_birth: "1999-09-17",
  gender: "female",
  phone_number: "+5493435430799",
  blood_group: "0",
  blood_type: "-"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
user2.photo.attach(io: file, filename: "michele.png", content_type: "image/png")
puts "usuario: #{user2.email}"


# BOOKINGS
# crear 3 bokkings para user1 y 5 para user2

booking = Booking.create!(
  user_id: user1.id,
  name: "Turno clinico",
  start_time: "2023-01-15",
  details: "Control clinico",
  address: "Esquina Segurola y Havanna"
)

booking1 = Booking.create!(
  user_id: user1.id,
  name: "Turno clinico",
  start_time: "2023-01-16",
  details: "Control clinico",
  address: "Esquina Segurola y Havanna"
)

booking2 = Booking.create!(
  user_id: user1.id,
  name: "Turno psicologo",
  start_time: "2023-01-10",
  details: "Turno semanal",
  address: "Esquina Segurola y Havanna"
)

booking3 = Booking.create!(
  user_id: user2.id,
  name: "Turno gastroenterologo",
  start_time: "2023-01-21",
  details: "Control anual de sistema digestivo",
  address: "Esquina Segurola y Havanna"
)

booking4 = Booking.create!(
  user_id: user2.id,
  name: "Turno clinico",
  start_time: "2023-01-25",
  details: "Control clinico",
  address: "Alameda de la Federacion 233"
)

booking5 = Booking.create!(
  user_id: user2.id,
  name: "Turno psoquiatra",
  start_time: "2023-01-15",
  details: "Turno mensual",
  address: "Alameda de la Federacion 233"
)

booking6 = Booking.create!(
  user_id: user2.id,
  name: "Turno otorrinonaringologo",
  start_time: "2023-01-12",
  details: "Control de oidos",
  address: "Alameda de la Federacion 233"
)

booking7 = Booking.create!(
  user_id: user2.id,
  name: "Turno kinesiologo",
  start_time: "2023-01-13",
  details: "Rehabilitacion de contractura muscular",
  address: "Alameda de la Federacion 233"
)
puts "creados 8 turnos medicos"

# EXAMENES
# luego 3 exams para user1 y 2 para user2 (foto anexada de radiografia en uno de los examenes)

exam = Exam.create!(
  user_id: user1.id,
  date: "2023-01-13",
  name: "Tomografía",
  place: "Clinica Parque"
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/v1674137736/receta1_rglc6c.jpg")
exam.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam1 = Exam.create!(
  user_id: user1.id,
  date: "2023-01-13",
  name: "Mamografia",
  place: "Clinica Modelo"
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/v1674137736/receta2_vqmjfq.jpg")
exam1.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam2 = Exam.create!(
  user_id: user1.id,
  date: "2023-01-13",
  name: "Ecografia",
  place: "Clinica Modelo"
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/v1674138612/IMG_5110_xi4t6p.jpg")
exam2.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam3 = Exam.create!(
  user_id: user1.id,
  date: "2023-01-13",
  name: "Colonoscopia",
  place: "Clinica Modelo"
)
file = URI.open("http://res.cloudinary.com/dz3nzxaiy/image/upload/v1674139294/IMG_5111_gd0n9f.jpg")
exam3.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam4 = Exam.create!(
  user_id: user1.id,
  date: "2022-01-13",
  name: "Radiografia de torax",
  place: "Clinica Modelo"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam4.photo.attach(io: file, filename: "michele.png", content_type: "image/png")


exam5 = Exam.create!(
  user_id: user1.id,
  date: "2022-06-05",
  name: "Ecografia",
  place: "Maternidad oroño"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam5.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam6 = Exam.create!(
  user_id: user1.id,
  date: "2022-05-18",
  name: "Mamografia",
  place: "Sanatorio parque"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam6.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam7 = Exam.create!(
  user_id: user1.id,
  date: "2022-08-22",
  name: "Analisis sangre",
  place: "cibic"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam7.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam8 = Exam.create!(
  user_id: user1.id,
  date: "2022-08-22",
  name: "vacuna covid",
  place: "Hospital san felipe"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam8.photo.attach(io: file, filename: "michele.png", content_type: "image/png")


puts "creados 8 examenes medicos"

# HABITOS
# habits: 4 a cada uno

habit = Habit.create!(
  user_id: user1.id,
  habit_type: "TABACO",
  quantity: 1,
  frequency: "Mensual"
)

habit1 = Habit.create!(
  user_id: user1.id,
  habit_type: "ALCOHOL",
  quantity: 2,
  frequency: "Mensual"
)

habit2 = Habit.create!(
  user_id: user1.id,
  habit_type: "CAFE",
  quantity: 1,
  frequency: "Semanal"
)

habit3 = Habit.create!(
  user_id: user1.id,
  habit_type: "Meditation",
  quantity: 2,
  frequency: "Diario"
)

habit4 = Habit.create!(
  user_id: user2.id,
  habit_type: "ALIMENTACION",
  quantity: 3,
  frequency: "Mensual"
)

habit5 = Habit.create!(
  user_id: user2.id,
  habit_type: "EJERCICIO",
  quantity: 3,
  frequency: "Mensual"
)

habit6 = Habit.create!(
  user_id: user2.id,
  habit_type: "SUEÑO",
  quantity: 1,
  frequency: "Mensual"
)

puts "creados 8 habitos"

# RECETAS
# recipe: 2 recetas a user1 (buscar foto de receta medica y subir 2)

recipe = Recipe.create!(
  user_id: user1.id,
  date: "2023-01-03",
  doctor_name: "Rene Favaloro"
)
file = URI.open("https://res.cloudinary.com/drd7kavdp/image/upload/v1674328715/receta_1_oay2a7.jpg")
recipe.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

recipe2 = Recipe.create!(
  user_id: user1.id,
  date: "2023-01-15",
  doctor_name: "Dr. Cormillot"
)
file = URI.open("https://res.cloudinary.com/drd7kavdp/image/upload/v1674328715/receta_2_bdfjn1.jpg")
recipe2.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

recipe3 = Recipe.create!(
  user_id: user1.id,
  date: "2023-01-07",
  doctor_name: "Alberto Parodi"
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/v1674137736/receta1_rglc6c.jpg")
recipe3.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

recipe4 = Recipe.create!(
  user_id: user1.id,
  date: "2023-02-10",
  doctor_name: "Ariana Ramirez"
)
file = URI.open("https://res.cloudinary.com/drd7kavdp/image/upload/v1674328715/receta_1_oay2a7.jpg")
recipe4.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

recipe5 = Recipe.create!(
  user_id: user1.id,
  date: "2023-03-25",
  doctor_name: "Raul Gonzalez"
)
file = URI.open("https://res.cloudinary.com/drd7kavdp/image/upload/v1674328715/receta_1_oay2a7.jpg")
recipe5.photo.attach(io: file, filename: "michele.png", content_type: "image/png")


puts "creadas 5 recetas medicas"


# REPORTES
# reports: 2 para user1

report = Report.create!(
  user_id: user1.id,
  title: "Informe neurologo",
  date: "2023-01-06",
  category: "Neurologia"
)

report1 = Report.create!(
  user_id: user1.id,
  title: "Informe medico clinico",
  date: "2023-01-10",
  category: "Clinica"
)

puts "creados 2 informes/reportes medicos"
