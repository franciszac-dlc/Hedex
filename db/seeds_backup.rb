# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
Region.create(region_name: 'Ilocos Region')
Region.create(region_name: 'Cagayan Valley')
Region.create(region_name: 'Central Luzon')
Region.create(region_name: 'CALABARZON')
Region.create(region_name: 'Bicol Region')
Region.create(region_name: 'Western Visayas')
Region.create(region_name: 'Central Visayas')
Region.create(region_name: 'Eastern Visayas')
Region.create(region_name: 'Zamboanga Peninsula')
Region.create(region_name: 'Northern Mindanao')
Region.create(region_name: 'Davao Region')
Region.create(region_name: 'SOCCSKSARGEN')
Region.create(region_name: 'National Capital Region')
Region.create(region_name: 'Cordillera Administrative Region')
Region.create(region_name: 'Autonomous Region for Muslim Mindanao')
Region.create(region_name: 'Caraga Region')
Region.create(region_name: 'MIMAROPA')

## INSTITUTIONS
Region.where(region_name: "Autonomous Region for Muslim Mindanao").first.institutions.create(id: 1, name: 'The Mariam College of Nursing, Inc.', inst_class: 'HEI', address_province: 'Basilan', address_municipality: 'Lamitan City', address_street_no: 'Flores St.', cong_distr_num: 'Lone')

Region.where(region_name: "Cordillera Administrative Region").first.institutions.create(id: 2, name: 'BENECO Skills Development Training Center', inst_class: 'TVI', address_province: 'Benguet', address_municipality: 'Buguias', address_street_no: 'Bekes, Buyacoaan', cong_distr_num: 'Lone')

Region.where(region_name: "Caraga Region").first.institutions.create(id: 3, name: 'PROVINCIAL TRAINING CENTER-AGUSAN DEL NORTE (CABADBARAN)', inst_class: 'TESDA Technology Institution', address_province: 'Agusan del Norte', address_municipality: 'Cabadbaran', address_street_no: 'Government Center', cong_distr_num: '2nd')

Region.where(region_name: "National Capital Region").first.institutions.create(id: 4, name: 'St. Bernadette College of Alabang', inst_class: 'HEI', address_province: '', address_municipality: 'Muntinlupa City', address_street_no: 'Km. 23.6 East Service Rd., Udings Cmpd. I, Alabang', cong_distr_num: 'Lone')

Region.where(region_name: "National Capital Region").first.institutions.create(id: 5, name: 'Olivarez College, Inc.', inst_class: 'HEI', address_province: '', address_municipality: 'Parañaque City', address_street_no: 'Dr. A. Santos Avenue, Brgy. San Dionisio', cong_distr_num: '1st')

Region.where(region_name: "National Capital Region").first.institutions.create(id: 6, name: 'Asia Pacific School of Arts and Sciences, Inc.', inst_class: 'TVI', address_province: '', address_municipality: 'Quezon City', address_street_no: 'No. 16 & 18 Lands St., Brgy. Vasra Visayas Ave., Diliman', cong_distr_num: '2nd')

Region.where(region_name: "CALABARZON").first.institutions.create(id: 7, name: 'A2Z Driving Academy Inc.', inst_class: 'TVI', address_province: 'Batangas', address_municipality: 'Batangas City', address_street_no: 'Areza Town Center, Brgy. Concepcion', cong_distr_num: '5th')

Region.where(region_name: "Bicol Region").first.institutions.create(id: 8, name: 'Dr. Emilio B. Espinosa, Sr. Memorial State College of Agriculture and Technology', inst_class: 'SUC', address_province: 'Masbate', address_municipality: 'Mandaon', address_street_no: 'Cabitan', cong_distr_num: '3rd')

Region.where(region_name: "Bicol Region").first.institutions.create(id: 9, name: 'AGO Medical and Educational Center, Inc.', inst_class: 'TVI', address_province: 'Albay', address_municipality: 'Legazpi City', address_street_no: 'Rizal St., Old Albay', cong_distr_num: '2nd')

Region.where(region_name: "Northern Mindanao").first.institutions.create(id: 10, name: 'Alemarz School of Science and Technology Foundation', inst_class: 'HEI', address_province: 'Bukidnon', address_municipality: 'Valencia City', address_street_no: '', cong_distr_num: '2nd')

Region.where(region_name: "Northern Mindanao").first.institutions.create(id: 11, name: 'Aloran Trade High School', inst_class: 'DepED', address_province: 'Misamis Occidental', address_municipality: 'Aloran', address_street_no: '', cong_distr_num: '1st')

Region.where(region_name: "SOCCSKSARGEN").first.institutions.create(id: 12, name: 'Graciano Institute Academy, Inc.', inst_class: 'TVI', address_province: 'Sarangani-Gensan', address_municipality: 'General Santos City', address_street_no: 'Upper Cahilsot, Calumpang', cong_distr_num: '1st')

## INST CONTACTS

Institution.find(3).inst_contacts.create(contact_num: 3430292)
Institution.find(3).inst_contacts.create(contact_num: 2812773)
Institution.find(4).inst_contacts.create(contact_num: 8422139)
Institution.find(4).inst_contacts.create(contact_num: 8566602)
Institution.find(5).inst_contacts.create(contact_num: 8290703)
Institution.find(5).inst_contacts.create(contact_num: 8260750)
Institution.find(6).inst_contacts.create(contact_num: 3321296)
Institution.find(6).inst_contacts.create(contact_num: 2095111)
Institution.find(7).inst_contacts.create(contact_num: 7025917)
Institution.find(7).inst_contacts.create(contact_num: 09233743999)
Institution.find(9).inst_contacts.create(contact_num: 4813777)
Institution.find(9).inst_contacts.create(contact_num: 4811155)
Institution.find(10).inst_contacts.create(contact_num: 0888283330)
Institution.find(10).inst_contacts.create(contact_num: 0888442100)
Institution.find(12).inst_contacts.create(contact_num: 09168713891)

## 
=end

connection = ActiveRecord::Base.connection();

connection.execute("

")
