User.destroy_all

@grom = User.create(name: "grom", email: "grom@yah00.ca")
@dave = User.create(name: "dave", email: "dave@yah00.ca")

@blog1 = Blog.create(author_id: @grom.id, title: "test", body: "this is a test")
@blog1 = Blog.create(author_id: @dave.id, title: "cats", body: "cats are cool")
