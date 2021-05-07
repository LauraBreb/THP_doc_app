# create cities
  city1=City.create(name:"Paris")
  city2=City.create(name:"Bordeaux")
  puts "2 cities created !"

# create specialties
  spe1=Specialty.create(name:"opthalmologue")
  spe2=Specialty.create(name:"chirurgien")
  spe3=Specialty.create(name:"generaliste")
  puts "3 specialties created !"

# create doctors
  doctor1=Doctor.new(first_name:"John", last_name:"Smith", zip_code:"75000")
  doctor1.city = city1
  doctor1.specialties << spe1
  doctor1.specialties << spe3
  doctor1.save
  doctor2=Doctor.new(first_name:"Bernard", last_name:"Kouchner", zip_code:"33000")
  doctor2.city = city2
  doctor2.specialties << spe2
  doctor2.specialties << spe3
  doctor2.save
  puts "2 doctors created !"

# create patients
  patient1=Patient.new(first_name:"Poca", last_name:"Hantas")
  patient1.city = city1
  patient1.save
  patient2=Patient.new(first_name:"Karl", last_name:"Marx")
  patient2.city = city2
  patient2.save
  puts "2 patients created !"

# create appointments
  appointment1=Appointment.new(date: 06/05/2021)
  appointment1.doctor = doctor1
  appointment1.patient = patient1
  appointment1.city = city1
  appointment1.save
  appointment2=Appointment.new(date: 07/05/2021)
  appointment2.doctor = doctor2
  appointment2.patient = patient2
  appointment2.city = city2
  appointment2.save
  puts "2 appointments created !"