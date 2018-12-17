def seed_users
  user_id = 0
  10.times do
    User.create(
      username: "test#{user_id}",
      email: "test#{user_id}@test.com",
      password: '123456',
      password_confirmation: '123456'
    )
    user_id += 1
  end
end

def seed_categories
  hobby = %w(Libros Ciencia Otros)
  study = [
    "Academicos",
    "Negocios",
    "Diseño",
    "Desarrollo",
    "IT",
    "Marketing",
    "Computer Science"
  ]
  personal = ['Salud', 'Estilo de Vida', 'Metodos']

  hobby_parent = Category.create(branch: nil, name: 'Hobby')
  study_parent = Category.create(branch: nil, name: 'Estudios')
  personal_parent = Category.create(branch: nil, name: 'Desarrollo Personal')

  hobby.each do |name|
    Category.create(branch: 'Hobby', name: name, parent: hobby_parent)
  end

  study.each do |name|
    Category.create(branch: 'Estudios', name: name, parent: study_parent)
  end

  personal.each do |name|
    Category.create(branch: 'Desarrollo Personal', name: name, parent: personal_parent)
  end
end

def seed_posts
  categories = Category.roots.collect { |parent| parent.children }.flatten

  categories.each do |category|
    5.times do
      Post.create(
        title: Faker::Lorem.sentences[0],
        content: Faker::Lorem.sentences[0],
        user: User.all.sample,
        category: category
      )
    end
  end
end

seed_users
seed_categories
seed_posts
