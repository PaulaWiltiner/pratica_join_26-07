-- QUESTÃO 1 ----------------------------

SELECT users.id , users.name , cities.name AS city  FROM users JOIN cities ON users."cityId" = cities.id WHERE cities.name='Rio de Janeiro';

-- QUESTÃO 2 ----------------------------

SELECT testimonials.id , writer.name AS writer, recipient.name AS recipient ,testimonials.message FROM testimonials JOIN users writer ON testimonials."writerId" = writer.id JOIN users recipient ON testimonials."recipientId" = recipient.id;

-- QUESTÃO 3 ----------------------------

SELECT users.id , users.name , courses.name AS course , schools.name AS school , ed."endDate" AS endDate FROM users JOIN educations ed ON users.id = ed."userId" JOIN courses ON ed."courseId" = courses.id JOIN schools ON ed."schoolId" = schools.id WHERE users.id = 30 AND ed.status='finished';

-- QUESTÃO 4 ----------------------------

