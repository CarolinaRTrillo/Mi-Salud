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
  gender: 1,
  phone_number: "+5493435430718",
  blood_group: 0,
  blood_type: 0
)
# photo.attach nos hace usar cloudinary: config.active_storage.service = :cloudinary (linea 38 del development.rb)

file = URI.open("https://res.cloudinary.com/drd7kavdp/image/upload/v1674609097/Foto_perfil_nljvbn.jpg")
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
  gender: 0,
  phone_number: "+5493435430799",
  blood_group: 0,
  blood_type: 0
)
file = URI.open("https://res.cloudinary.com/drd7kavdp/image/upload/v1674610666/michelle_timwly.jpg")
user2.photo.attach(io: file, filename: "michele.png", content_type: "image/png")
puts "usuario: #{user2.email}"


# BOOKINGS
# crear 3 bokkings para user1 y 5 para user2

booking = Booking.create!(
  user_id: user1.id,
  name: "Turno clínico",
  start_time: "2023-01-15",
  details: "Control clínico",
  address: "Esquina Segurola y Havanna"
)

booking1 = Booking.create!(
  user_id: user1.id,
  name: "Turno clínico",
  start_time: "2023-01-16",
  details: "Control clínico",
  address: "Esquina Segurola y Havanna"
)

booking2 = Booking.create!(
  user_id: user1.id,
  name: "Turno psicólogo",
  start_time: "2023-01-10",
  details: "Turno semanal",
  address: "Esquina Segurola y Havanna"
)

booking3 = Booking.create!(
  user_id: user2.id,
  name: "Turno gastroenterólogo",
  start_time: "2023-01-21",
  details: "Control anual de sistema digestivo",
  address: "Esquina Segurola y Havanna"
)

booking4 = Booking.create!(
  user_id: user2.id,
  name: "Turno clínico",
  start_time: "2023-01-25",
  details: "Control clínico",
  address: "Alameda de la Federacion 233"
)

booking5 = Booking.create!(
  user_id: user2.id,
  name: "Turno psiquiatra",
  start_time: "2023-01-15",
  details: "Turno mensual",
  address: "Alameda de la Federacion 233"
)

booking6 = Booking.create!(
  user_id: user2.id,
  name: "Turno otorrinonaringólogo",
  start_time: "2023-01-12",
  details: "Control de oídos",
  address: "Alameda de la Federacion 233"
)

booking7 = Booking.create!(
  user_id: user2.id,
  name: "Turno kinesiólogo",
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
  place: "Clínica Parque"
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/v1674852655/tomografia_utxrk7.png")
exam.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam1 = Exam.create!(
  user_id: user1.id,
  date: "2023-01-13",
  name: "Mamografía",
  place: "Clínica Modelo"
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/v1674852791/mamografia_k4wnw3.jpg")
exam1.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam2 = Exam.create!(
  user_id: user1.id,
  date: "2023-01-13",
  name: "Ecografía",
  place: "Cliínica Modelo"
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/v1674852861/ecografia_s267bo.jpg")
exam2.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam3 = Exam.create!(
  user_id: user1.id,
  date: "2023-01-13",
  name: "Colonoscopía",
  place: "Clínica Modelo"
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/v1674852987/colonoscopia_g4lgjo.jpg")
exam3.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam4 = Exam.create!(
  user_id: user1.id,
  date: "2022-01-13",
  name: "Radiografía de tórax",
  place: "Clínica Modelo"
)
file = URI.open("https://res.cloudinary.com/dz3nzxaiy/image/upload/v1674853054/radriografia_torax_xo4bga.jpg")
exam4.photo.attach(io: file, filename: "michele.png", content_type: "image/png")


exam5 = Exam.create!(
  user_id: user2.id,
  date: "2022-06-05",
  name: "Ecografía",
  place: "Maternidad oroño"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam5.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam6 = Exam.create!(
  user_id: user2.id,
  date: "2022-05-18",
  name: "Mamografía",
  place: "Sanatorio parque"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam6.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam7 = Exam.create!(
  user_id: user2.id,
  date: "2022-08-22",
  name: "Análisis sangre",
  place: "Cibic"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam7.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

exam8 = Exam.create!(
  user_id: user2.id,
  date: "2022-08-22",
  name: "Vacuna covid",
  place: "Hospital san felipe"
)
file = URI.open("https://avatars.githubusercontent.com/u/48396891?v=4")
exam8.photo.attach(io: file, filename: "michele.png", content_type: "image/png")


puts "creados 8 exámenes médicos"

# HABITOS
# habits: 4 a cada uno

habit = Habit.create!(
  user_id: user1.id,
  habit_type: "Tabaco",
  quantity: 1,
  frequency: "Mensual"
)

habit1 = Habit.create!(
  user_id: user1.id,
  habit_type: "Alcohol",
  quantity: 2,
  frequency: "Mensual"
)

habit2 = Habit.create!(
  user_id: user1.id,
  habit_type: "Café",
  quantity: 1,
  frequency: "Semanal"
)

habit3 = Habit.create!(
  user_id: user1.id,
  habit_type: "Alimentación",
  quantity: 2,
  frequency: "Diario"
)

habit4 = Habit.create!(
  user_id: user2.id,
  habit_type: "Ejercicio",
  quantity: 3,
  frequency: "Mensual"
)

habit5 = Habit.create!(
  user_id: user2.id,
  habit_type: "Sueño",
  quantity: 3,
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
file = URI.open("https://res.cloudinary.com/drd7kavdp/image/upload/v1674498664/receta_6_l5uviu.jpg")
recipe3.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

recipe4 = Recipe.create!(
  user_id: user1.id,
  date: "2023-02-10",
  doctor_name: "Ariana Ramirez"
)
file = URI.open("https://res.cloudinary.com/drd7kavdp/image/upload/v1674498664/receta_9_ar4lvl.jpg")
recipe4.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

recipe5 = Recipe.create!(
  user_id: user1.id,
  date: "2023-03-25",
  doctor_name: "Raul Gonzalez"
)
file = URI.open("https://res.cloudinary.com/drd7kavdp/image/upload/v1674498664/receta_8_n5s9n6.jpg")
recipe5.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

recipe6 = Recipe.create!(
  user_id: user1.id,
  date: "2023-03-25",
  doctor_name: "German Sosa"
)
file = URI.open("https://res.cloudinary.com/drd7kavdp/image/upload/v1674498664/receta_5_imvsbo.jpg")
recipe6.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

recipe7 = Recipe.create!(
  user_id: user1.id,
  date: "2023-03-25",
  doctor_name: "Marcelo Kranevitter"
)
file = URI.open("https://res.cloudinary.com/drd7kavdp/image/upload/v1674498664/receta_4_zkhnno.jpg")
recipe7.photo.attach(io: file, filename: "michele.png", content_type: "image/png")

recipe8 = Recipe.create!(
  user_id: user1.id,
  date: "2023-03-25",
  doctor_name: "Matilde Gomez"
)
file = URI.open("https://res.cloudinary.com/drd7kavdp/image/upload/v1674498664/receta_7_pdwskw.jpg")
recipe8.photo.attach(io: file, filename: "michele.png", content_type: "image/png")


puts "creadas 8 recetas medicas"


# REPORTES
# reports: 2 para user1

report = Report.create!(
  user_id: user1.id,
  title: "Informe neurologo",
  date: "2023-01-06",
  category: "Neurologia"
)

report1 = Report.create!(
  user_id: user2.id,
  title: "Informe medico clinico",
  date: "2023-01-10",
  category: "Clinica"
)

puts "creados 2 informes/reportes medicos"
