# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# user_attributes =
# [{
#    first_name: 'Admin',
#    last_name: 'Adminic',
#    email: 'admin@gmail.com',
#    role: 'admin',
#    password: 'admin1' },
#   { first_name: 'John',
#     last_name: 'White',
#     email: 'john@gmail.com',
#     password: 'johnpassword'},
#   {
#     first_name: 'Amanda',
#     last_name: 'Black',
#     email: 'amanda@gmail.com',
#     password: 'amandapassword'
#  }]
#  user_attributes.each do |attributes|
#   user= User.new(attributes)
#   user.save
# end
#
# child_attributes =
#   [
#     { first_name: 'Brian', last_name: 'White', dob: Date.parse('01/03/2015'), gender: 'male', user_id: 2 },
#     { first_name: 'Julia', last_name: 'White', dob: Date.parse('12/10/2013'), gender: 'female', user_id: 2 },
#     { first_name: 'Tony', last_name: 'Black', dob: Date.parse('03/12/2009'), gender: 'male', user_id: 3 },
#   ]
#   child_attributes.each do |attributes|
#     child = Child.new(attributes)
#     child.save
# end

hepatitis_b = "The hepatitis B vaccine (HepB) protects your child against the
hepatitis B virus, which can lead to liver damage and even death. Hepatitis B
is generally considered an adult disease because it's transmitted through unsafe
sex and shared needles. But many people who get it – including children – don't
engage in these high-risk behaviors. They're either infected at birth or they contract
the disease during childhood from close contact with another person who is infected.
Hepatitis B is highly infectious. An estimated 700,000 to 1.4 million people in
the United States have the virus and most of them acquired it in childhood."

dtap = "The DTaP vaccine protects your child against three diseases: diphtheria, tetanus, and pertussis (whooping cough).
Diphtheria is bacterial infection that causes fever, weakness, and a sore throat.
A thick, gray coating develops in the back of the throat, which makes it hard to
breathe or swallow and sometimes results in suffocation.
If the infection isn't treated, toxins produced by the bacteria may affect tissues
and organs throughout the body, possibly leading to heart failure or paralysis.
Tetanus (also called lockjaw) is a bacterial infection that can cause severe and
painful muscle spasms, seizures, and paralysis.
Pertussis, better known as whooping cough, is a very contagious bacterial infection and one of the most common
vaccine-preventable childhood diseases. Whooping cough causes coughing spells
so severe that it's hard for a child to eat, drink, or breathe.
It can lead to pneumonia, seizures, brain damage, and death."

hib = "The Hib vaccine protects your child against a severe bacterial infection
that mostly affects babies and children under 5 years old.
The bacteria can cause epiglottitis (severe swelling in the throat that makes it hard to breathe),
a serious form of pneumonia, and a disease called bacterial meningitis.
Meningitis is an infection of the membrane covering the brain and spinal cord.
Hib meningitis causes death in 1 out of 20 children and permanent brain damage in 10 to 30 percent of those who survive.
Hib, or Haemophilus influenzae type b, can also cause serious joint and skin infections as well as other less common infections."

polio = "The polio vaccine protects against poliomyelitis (polio),
a highly infectious disease caused by a virus that invades the nervous system.
Before a vaccine was introduced in 1954, more than 20,000 cases of polio were reported annually
in the United States, and about 1,000 people died each year. Up to 95 percent of people
infected with the virus have no symptoms, and many who do get sick have only mild symptoms
such as a sore throat, fever, stomach pain, or nausea.
Less common symptoms include headache and a stiff neck, back, or legs.
Less than 1 percent of people who get polio become paralyzed."

pcv = "This vaccine protects against pneumococcal (pronounced new-m'COCKL) infections,
which mostly strike children under age 5 and can lead to some of the worst childhood diseases.
Pneumococcal infections are one of the most common causes of death in the United States from a
disease that's preventable with a vaccine.
Before the vaccine, pneumococcal infections caused more than 700 cases of meningitis, 13,000 blood infections,
and 5 million ear infections in children under 5 every year, according to the U.S. Centers for Disease Control
and Prevention (CDC). The vaccine is effective in up to 90 percent of people who get it.
The germs responsible for pneumococcal are bacteria called Streptococcus pneumoniae.
They live in the mucous lining of the nose and in the back of the throat.
And when they're plentiful enough, they can cause an infection in the respiratory tract, middle ear, or sinus cavities."

rotavirus = "The vaccine protects against rotavirus, the leading cause
of severe diarrhea in babies and young children around the world and –
before the vaccine – in the United States. The virus causes severe diarrhea,
fever, vomiting, dehydration, and sometimes death. It's extremely contagious,
spreading easily through ordinary person-to-person contact.
Good hygiene and sanitation don't effectively stop rotavirus disease, so
immunization is your best defense. The vaccine is given orally, and most
babies who receive it won't get rotavirus diarrhea at all. Almost all of
them will be protected from severe rotavirus diarrhea. According to the U.S.
Centers for Disease Control (CDC), before the vaccine came into use in the
United States in 2006, rotavirus infected almost all children in the United States by age 5.
(Adults can contract it too, but the illness tends to be mild.) The virus triggered
more than 400,000 doctor visits and 200,000 emergency room visits, 55,000 to 70,000 hospitalizations,
and 20 to 60 deaths each year. By 2008, the vaccine had reduced the number of young children needing
hospitalization for rotavirus disease by as much as 96 percent."

mmr = "The MMR vaccine protects your child against three viruses: measles, mumps, and rubella (German measles).
You can also protect your child against chicken pox with the MMRV vaccine.
The MMRV is the same as the MMR, except that it also includes protection against the varicella virus, which causes chicken pox.
Some parents get the first dose of the MMR vaccine for their child, and choose the MMRV vaccine for the second dose.
(The U.S. Centers for Disease Control (CDC) doesn't recommend the MMRV for the first dose because of an increased
risk of fever and febrile seizures.)"

varicella = "It may seem unnecessary because childhood chicken pox (also known as varicella)
is usually a relatively mild illness. And some parents think it's better to let their kids
be exposed to chicken pox so they'll get the illness (and the resulting immunity) naturally.
But most experts now recommend the chicken pox vaccine, and many schools and daycare centers require it."

hepatitis_a = "This vaccine (HepA) protects your child against the hepatitis A virus,
which causes a liver disease. The long-term physical consequences of hepatitis A
are usually far less serious than those of hepatitis B or C. Still,
a bout of hepatitis A is no fun, and the worst cases can cause liver damage and even death.
In 2013, there were an estimated 3,500 new hepatitis A virus infections in the United States.
But because many people – particularly children – show no symptoms,
it's hard to know exactly how many people are infected each year.
The good news is that rates of hepatitis A in the United States are the lowest
they've been in over 40 years, thanks to the vaccine."

meningococcal = "This vaccine protects against the bacteria Neisseria meningitidis,
which causes meningococcal disease. Before the vaccine, meningococcal disease was the leading
cause of bacterial meningitis (an infection in the fluid around the brain and spinal cord) in children in the United States.
In an infected person, Neisseria meningitidis live in the back of the throat and spread through droplets of respiratory
or throat secretions. Coughing, sneezing, kissing, and sharing water bottles or utensils spread the disease.
Fewer than 1,000 people in the United States get meningococcal disease each year, and 1 person in 10 dies from it.
The disease can also cause loss of limbs, deafness, intellectual disability, stroke, and other serious problems.
Children younger than 1 and people ages 16 to 23 are the most likely to contract meningococcal disease.
College freshmen living in dormitories and soldiers in military housing are also at higher risk. "

hpv = "Human papillomavirus (HPV) is the main cause of cervical cancer.
About 12,000 women in the United States get cervical cancer each year, and most cases are associated with HPV.
HPV is the most common sexually transmitted infection (STI), and most infected people don't even realize
they have it – or that they're passing it to their sexual partners.
There are more than 40 types of HPV, and you can become infected with more than one type.
It's so commonplace that it's estimated that most sexually active adults will get HPV in their lifetime.
The virus affects both men and women. It's the cause of anal, mouth, throat, penile, vaginal, and
other cancers as well as genital warts, which are found in about 1 in 100 sexually active adults in the United States."

vaccine_attributes =
  [{ title: 'Hepatitis B', timeframe: 'Birth', description: hepatitis_b, month: 0, year: 0},
   { title: 'Hepatitis B', timeframe: '1 to 2 months', description: hepatitis_b, month: 1, year: 0},
   { title: 'DTaP', timeframe: '2 months', description: dtap, month: 2, year: 0},
   { title: 'Hib', timeframe: '2 months', description: hib, month: 2, year: 0},
   { title: 'Polio (IPV)', timeframe: '2 months', description: polio, month: 2, year: 0},
   { title: 'Pneumococcal (PCV)', timeframe: '2 months', description: pcv, month: 2, year: 0},
   { title: 'Rotavirus', timeframe: '2 months', description: rotavirus, month: 2, year: 0},
   { title: 'DTaP', timeframe: '4 months', description: dtap, month: 4, year: 0},
   { title: 'Hib', timeframe: '4 months', description: hib, month: 4, year: 0},
   { title: 'Polio (IPV)', timeframe: '4 months', description: polio, month: 4, year: 0},
   { title: 'Pneumococcal (PCV)', timeframe: '4 months', description: pcv, month: 4, year: 0},
   { title: 'Rotavirus', timeframe: '4 months', description: rotavirus, month: 4, year: 0},
   { title: 'DTaP', timeframe: '6 months', description: dtap, month: 6, year: 0},
   { title: 'Hib', timeframe: '6 months', description: hib, month: 6, year: 0},
   { title: 'Pneumococcal (PCV)', timeframe: '6 months', description: pcv, month: 6, year: 0},
   { title: 'Rotavirus', timeframe: '6 months', description: rotavirus, month: 4, year: 0},
   { title: 'Hepatitis B', timeframe: '6 to 18 months', description: hepatitis_b, month: 6, year: 0},
   { title: 'Polio (IPV)', timeframe: '6 to 18 months', description: polio, month: 6, year: 0},
   { title: 'Hib', timeframe: '12 to 15 months', description: hib, month: 12, year: 0},
   { title: 'MMR', timeframe: '12 to 15 months', description: mmr, month: 12, year: 0},
   { title: 'Pneumococcal (PCV)', timeframe: '12 to 15 months', description: pcv, month: 12, year: 0},
   { title: 'Varicella', timeframe: '12 to 15 months', description: varicella, month: 12, year: 0},
   { title: 'Hepatitis A', timeframe: '12 to 23 months', description: hepatitis_a, month: 12, year: 0},
   { title: 'DTaP', timeframe: '15 to 18 months', description: dtap, month: 15, year: 0},
   { title: 'Varicella', timeframe: '4 to 6 years', description: varicella, month: 0, year: 4},
   { title: 'DTaP', timeframe: '4 to 6 years', description: dtap, month: 0, year: 4},
   { title: 'Polio (IPV)', timeframe: '4 to 6 years', description: polio, month: 0, year: 4},
   { title: 'MMR', timeframe: '4 to 6 years', description: mmr, month: 0, year: 4},
   { title: 'Tdap (DTaP booster)', timeframe: '11 to 12 years', description: dtap, month: 0, year: 11},
   { title: 'Meningococcal (MCV4)', timeframe: '11 to 12 years', description: meningococcal, month: 0, year: 11},
   { title: 'HPV', timeframe: '11 to 12 years', description: dtap, month: 0, year: 11},
   { title: 'Meningococcal (MCV4)', timeframe: '16 years', description: meningococcal, month: 0, year: 16}
  ]
  vaccine_attributes.each do |attributes|
    vaccine = Vaccine.new(attributes)
    vaccine.save
end
