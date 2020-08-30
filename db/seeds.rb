User.destroy_all

@grom = User.create(name: "grom", email: "grom@yah00.ca")
@dave = User.create(name: "dave", email: "dave@yah00.ca")
@daveII = User.create(name: "dave II", email: "daveII@yah00.ca")
@bob = User.create(name: "bob", email: "bob@yah00.ca")
@steph = User.create(name: "steph", email: "steph@yah00.ca")
@sharol = User.create(name: "sharol", email: "sharol@yah00.ca")
@proGamer = User.create(name: "pro gamer", email: "proGamer@yah00.ca")
users = [@grom.id, @dave.id, @daveII.id, @bob.id, @steph.id, @sharol.id, @proGamer.id]
20.times do 
    id_filin = users.sample();
    Blog.create(author_id: id_filin, title: "Lorem ipsum", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed risus pretium quam vulputate. Pharetra diam sit amet nisl suscipit adipiscing bibendum est ultricies. Sodales neque sodales ut etiam sit. Donec ultrices tincidunt arcu non sodales neque sodales ut etiam. Arcu dictum varius duis at. Dui ut ornare lectus sit amet est placerat in. Sit amet cursus sit amet dictum sit amet justo donec. Risus pretium quam vulputate dignissim suspendisse in est ante in. Odio morbi")
end

p "#{User.count} users created"
p "#{Blog.count} blogs created"