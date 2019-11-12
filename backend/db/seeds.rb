# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
  {
    'username' => 'LordFlop',
    'password_digest' => 'password',
    'email' => 'floppy@barterhouse.com'
  },
  {
    'username' => 'LadyJess',
    'password_digest' => 'password',
    'email' => 'ladyj@barterhouse.com'
  },
  {
    'username' => 'Pickleback',
    'password_digest' => 'password',
    'email' => 'pickleback@barterhouse.com'
  }
]

users.each do |user|
  User.create(username: user['username'], password_digest: user['password_digest'], email: user['email'])
end
