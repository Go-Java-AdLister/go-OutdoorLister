USE odlister_db;

INSERT INTO users(username, email, password)
    VALUE ('test', 'test@gmail.com', 'password');

INSERT INTO ads (user_id, title, createdOn, field, description)
    VALUE (1, 'Cagle recreation', '2022-07-20', 'camping', 'Nice area in New Waverly for camping trips'),
    (1, 'Burroughs Park', '2022-06-15', 'fishing', 'Beautiful stocked pond with playgrounds for the kids');

