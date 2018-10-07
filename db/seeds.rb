10.times do |x|
    Entity.create({
        name: Faker::SiliconValley.company,
        identity: Faker::Crypto.md5,
        max: 500,
        responsable: Faker::Name.name,
        pass: Faker::Crypto.md5  
    })
end

20.times do |x|
    User.create({
        name: Faker::Name.name,
        user: Faker::GameOfThrones.character,
        email: Faker::Internet.email,
        password: '123',
        age: Faker::Date.birthday(18, 65),
        rol: 'student',
        grade: Faker::Number.number(9),
        entity_id: Faker::Number.number(9)
    })
end

20.times do |x|
    Subject.create({
        name: Faker::Pokemon.name,
        grade: Faker::Number.number(9)
    })
end

40.times do |x|
    Rating.create({
        title: Faker::GameOfThrones.house,
        value: Faker::Number.number(100),
        responsable: Faker::GameOfThrones.character,
        user_id: Faker::Number.number(9)
    })
end

20.times do |x|
    Note.create({
        title: Faker::GameOfThrones.house,
        value: Faker::Number.number(100),
        observation: Faker::Lorem.sentence(3),
        user_id: Faker::Number.number(9),
        subject_id: Faker::Number.number(9)
    })
end