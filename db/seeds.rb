# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

unless Rails.env.production?
  connection = ActiveRecord::Base.connection
  connection.tables.each do |table|
    connection.execute("TRUNCATE #{table} CASCADE") unless table == "schema_migrations"
  end

  # Do the first half of the DML (before principals)
  sql = File.read('db/dml_1.sql')
  statements = sql.split(/;$/)
  statements.pop

  ActiveRecord::Base.transaction do
    statements.each do |st|
      connection.execute(st)
    end
  end

  # Insert Principal Users
Principal.create(id: 1, p_name: 'John Ketchum Tablefloorpen', email: 'jktable123@yahoo.com', password: 'password')
Principal.create(id: 2, p_name: 'Jade Spender Ocampo', email: 'jAdEzz@hotmail.com', password: 'password')
Principal.create(id: 3, p_name: 'Ash Alandy Peralta', email: 'ashap@gmail.com', password: 'password')
Principal.create(id: 4, p_name: 'Jake Asdfghjkl Peralta', email: 'holtisarobot@gmail.com', password: 'password')
Principal.create(id: 5, p_name: 'Sebastian Ketchum Ramirez', email: 'whatanemail@yahoo.com', password: 'password')
Principal.create(id: 6, p_name: 'Ron Unfakename Mario', email: 'totallyrealemailbro@hotmail.com', password: 'password')
Principal.create(id: 7, p_name: 'Pauline Dijkstra Doofenshmirtz', email: 'shortestpathtoevil@gmail.com', password: 'password')
Principal.create(id: 8, p_name: 'Anne Knuth Ablog', email: 'cantthinkofmoreemails@yahoo.com', password: 'password')
Principal.create(id: 9, p_name: 'Carl Holmes Avelino', email: 'how2writemail@gmail.com', password: 'password')
Principal.create(id: 10, p_name: 'Anne Asdfghjkl Holmes', email: 'why@yahoo.com', password: 'password')
Principal.create(id: 11, p_name: 'Candace Alandy Milverton', email: 'cam@yahoo.com', password: 'password')
Principal.create(id: 12, p_name: 'Sean Arguelles Bellinger', email: 'lastemailpls@yahoo.com', password: 'password')

  # Insert an Admin
  Admin.create(email: 'admin@hedex.com', password: 'asdfasdfasdf')

  # Do the second half of the DML
  sql = File.read('db/dml_2.sql')
  statements = sql.split(/;$/)
  statements.pop

  ActiveRecord::Base.transaction do
    statements.each do |st|
      connection.execute(st)
    end
  end
end
