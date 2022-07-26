-- QUESTÃO 1 ----------------------------

SELECT users.id , users.name , cities.name AS city  FROM users JOIN cities ON users."cityId" = cities.id WHERE cities.name='Rio de Janeiro' LIMIT 5;

-- QUESTÃO 2 ----------------------------

SELECT testimonials.id , writer.name AS writer, recipient.name AS recipient ,testimonials.message FROM testimonials JOIN users writer ON testimonials."writerId" = writer.id JOIN users recipient ON testimonials."recipientId" = recipient.id LIMIT 5;

-- QUESTÃO 3 ----------------------------

SELECT users.id , users.name , courses.name AS course , schools.name AS school , educations.endDate AS endDate FROM users JOIN educations ON users.id = educations."userId" JOIN courses ON educations."courseId" = courses.id JOIN schools ON educations."schoolId" = schools.id LIMIT 5;