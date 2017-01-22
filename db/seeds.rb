# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
user_attributes =
[{
   first_name: 'Nancy',
   last_name: 'Sinatra',
   email: 'nancy@gmail.com',
   password: 'nancypassword' },
  { first_name: 'John',
    last_name: 'White',
    email: 'test@example.com',
    password: 'password'},
  {
    first_name: 'Amanda',
    last_name: 'Black',
    email: 'amanda@gmail.com',
    password: 'amandapassword'
 },
 {
    first_name: 'Admin',
    last_name: 'Adminic',
    email: 'admin@gmail.com',
    role: 'admin',
    password: 'admin1' }]
 user_attributes.each do |attributes|
  user= User.new(attributes)
  user.save
end

child_attributes =
  [
    { first_name: 'Franky', last_name: 'Sinatra', dob: Date.parse('01/04/2015'), gender: 'male', user_id: 1 },
    { first_name: 'Izabella', last_name: 'Sinatra', dob: Date.parse('12/11/2013'), gender: 'female', user_id: 1 },
    { first_name: 'Brian', last_name: 'White', dob: Date.parse('01/03/2015'), gender: 'male', user_id: 2 },
    { first_name: 'Julia', last_name: 'White', dob: Date.parse('12/10/2013'), gender: 'female', user_id: 2 },
    { first_name: 'Tony', last_name: 'Black', dob: Date.parse('03/12/2009'), gender: 'male', user_id: 3 },
  ]
  child_attributes.each do |attributes|
    child = Child.new(attributes)
    child.save
end

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

question_attributes =
  [{
     title: "Do you prepare a separate meal for your kids?",
     description: "Do you make separate meals for your kids or do they eat the same thing that the grownups eat?
     I find that I am missing more flavorful food in favor of having everyone eat the same meals. I tend to make it a little simpler and blander, so kids can eat it too.
     What do other people do? Same food? Totally separate food? Give the kids the spicy stuff too? :P",
     user_id: 1
  },
  {
    title: "How much shoud I spend on a baby carrier?",
    description: 'I have be searching for the best carrier for my baby for a while now and there seems to be so many different kinds and reviews. Any suggestions?
    Also I am considering of buying a used one. Any opinions on that?',
    user_id: 2},
  {
    title: 'What are good ways to get an 7 year old boy into sports activities?',
    description: "I have an 8 years old boy, whom doesn't show any interest in sports or any other activities except his PS3, tablet and TV.
    I have been trying for the last three years (talking to him, proposing to buy him new games, and finally threatening) to get him into, football (Soccer), basketball but in vain.
    I also tried to get him into taekwondo so that he could stand up for himself in front of bullies but it with no success any idea would be extremely appreciate it.
    Please don't tell me that he doesn't need I used to be bullied and I do not want him to go through what I went through. BTW he is a shy boy.",
    user_id: 3},
    {
   title: 'Need some feedback on an idea I have',
   description: "Hi, I'm thinking to open a new birthdays place.
   Escape room for little kids, between 6-10 years old... at the end of the 'adventure', there is a room for the cake with balloons and snacks..
   Please let me know what do you think about this idea and if you will celebrate your kids birthday at a place like this?",
   user_id: 2}]

 question_attributes.each do |attributes|
  question= Question.new(attributes)
  question.save
end

answer_attributes =
  [{
     body: "Same food. How else will they learn about different foods?
     They don't like something? They can have more of the other items.
     Most of us grew up when our parents would never have dreamed of cooking separately for us
     (except when the grown-ups got great steaks, and we got burgers, but that''s another story.)
     Doesn't anyone remember having to stay at the table without dessert until we ate our peas?
     Depending on ages, you might tone down very spicy things, but my kid loved all things Mexican from an early age,
     and gradually took it hotter and hotter.",
     user_id: 2,
     question_id: 1
  },
  {
    body: "Make what you want to eat. If the kids are hungry, they'll eat it.
    A friend told me years ago that she would tell her kids if they turned up their noses at dinner,
    'You know where the cereal is.' It works :-)",
    user_id: 3,
    question_id: 1 },
  {
    body: "I suggest that when it comes to slings and baby carriers, you do need
    to pay a little bit more for the best product. None of our Best Buys is generally available for less than $80",
    user_id: 1,
    question_id: 2 },
  {
    body: "Try to find a baby carrier with multiple carrying positions for maximum comfort
    for you and your baby as he or she grows.",
    user_id: 3,
    question_id: 2 },
  {
     body: "A great way to teach kids self-defense and get them active and on their feet is Karate.
     Karate is a form of martial arts that improves physical performance and hand-eye coordination.
     Additionally, children seem to improve time management, focus and attentiveness.
     The program that really impacted my younger brother is Kids Karate Classes.
     Since starting the program he's no longer getting bullied and has made honor roll every marking period.
     The ear to ear grin that he gives me before going to school is priceless.",
     user_id: 1,
     question_id: 3
  },
  {
    body: "If your kid is not interested in sports, then why push that? That will only turn him off.
    Try something else. And being into sports won't stop him from being bullied.",
    user_id: 2,
    question_id: 3 },
  {
    body: "Take away his devices or limit the time on them.
    Get him and a friend together to do a sport - it sicks to join a team when you don't know anyone.
    Let them choose what to do.
    Or maybe their sport is going to the playground, go to the swimming pools or beach, or skateboarding..",
    user_id: 4,
    question_id: 3 },
  {
    body: "Sounds great!!! Count me in :):):)",
    user_id: 3,
    question_id: 4 }]

 answer_attributes.each do |attributes|
  answer = Answer.new(attributes)
  answer.save
end
