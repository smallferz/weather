History.delete_all
User.delete_all

User.create!([
  {id: 1, unique_identifier: "netja2ha12h1et1hr"}
])

History.create!([
  {id:1, city: ['Kyiv', 'Lviv', 'London'], user_id: 1}
  ])
