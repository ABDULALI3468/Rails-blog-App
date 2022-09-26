# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# student = Student.create(
#   firstname:'Ravi',
#   lastname:'Singh',
#   email:'ravi@bootcamp.com'
# )




Like.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all

bio = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Reprehenderit voluptates vitae similique modi nisi, commodi perferendis, id assumenda dolorem eaque tenetur suscipit! Tempora voluptatum vel sapiente eligendi qui, ipsum incidunt ex earum, debitis sed, harum esse! Officiis similique amet rerum! Molestiae quibusdam, perspiciatis dolore, aliquid minus dolores atque quia repudiandae nobis praesentium eum eius, earum necessitatibus voluptas doloremque iste ipsam dolorem dicta natus culpa. Iste sint quae non debitis ex."

# User seeds
user_1 = User.create(name: 'Tom', photo: 'https://th.bing.com/th/id/R.cac8d4103bf81d61aaaaacfb235fe5f4?rik=YF8SpstLPwM%2f1w&pid=ImgRaw&r=0&sres=1&sresct=1', bio: bio, posts_counter: 0)
user_2 = User.create(name: 'Lilly', photo: 'https://th.bing.com/th/id/R.cac8d4103bf81d61aaaaacfb235fe5f4?rik=YF8SpstLPwM%2f1w&pid=ImgRaw&r=0&sres=1&sresct=1', bio: bio, posts_counter: 0)

p "Created #{User.count} Users"

# Post seeds
post_1 = Post.create(author: user_1, title: 'Post One', text: 'This is the post one. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!', comments_counter: 0, likes_counter: 0)
post_2 = Post.create(author: user_1, title: 'Post Two', text: 'This is the post two. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!', comments_counter: 0, likes_counter: 0)
post_3 = Post.create(author: user_1, title: 'Post Three', text: 'This is the post three. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!', comments_counter: 0, likes_counter: 0)
post_4 = Post.create(author: user_1, title: 'Post Four', text: 'This is the post four. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!', comments_counter: 0, likes_counter: 0)
post_5 = Post.create(author: user_2, title: 'Post Five', text: 'This is the post one. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!', comments_counter: 0, likes_counter: 0)
post_6 = Post.create(author: user_2, title: 'Post Six', text: 'This is the post two. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!', comments_counter: 0, likes_counter: 0)
post_7 = Post.create(author: user_2, title: 'Post Seven', text: 'This is the post three. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!', comments_counter: 0, likes_counter: 0)
post_8 = Post.create(author: user_2, title: 'Post Eight', text: 'This is the post four. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Assumenda labore itaque, numquam ipsum dolorum, vero aperiam voluptas, architecto iure obcaecati dignissimos temporibus necessitatibus laborum consequatur provident perspiciatis autem iste! Aut!', comments_counter: 0, likes_counter: 0)

p "Created #{Post.count} Posts"

# Comment seeds
Comment.create([
                 { post: post_1, author: user_2, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, author: user_2, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, author: user_2, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, author: user_2, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, author: user_2, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, author: user_2, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, author: user_2, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, author: user_2, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, author: user_2, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_1, author: user_2, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },

                 { post: post_2, author: user_2, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, author: user_2, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, author: user_2, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, author: user_2, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, author: user_2, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, author: user_2, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, author: user_2, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, author: user_2, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, author: user_2, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_2, author: user_2, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },

                 { post: post_3, author: user_2, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, author: user_2, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, author: user_2, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, author: user_2, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, author: user_2, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, author: user_2, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, author: user_2, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, author: user_2, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, author: user_2, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_3, author: user_2, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },

                 { post: post_4, author: user_2, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, author: user_2, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, author: user_2, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, author: user_2, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, author: user_2, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, author: user_2, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, author: user_2, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, author: user_2, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, author: user_2, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_4, author: user_2, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },





                 { post: post_5, author: user_1, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, author: user_1, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, author: user_1, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, author: user_1, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, author: user_1, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, author: user_1, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, author: user_1, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, author: user_1, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, author: user_1, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_5, author: user_1, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },

                 { post: post_6, author: user_1, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, author: user_1, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, author: user_1, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, author: user_1, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, author: user_1, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, author: user_1, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, author: user_1, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, author: user_1, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, author: user_1, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_6, author: user_1, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },

                 { post: post_7, author: user_1, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, author: user_1, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, author: user_1, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, author: user_1, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, author: user_1, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, author: user_1, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, author: user_1, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, author: user_1, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, author: user_1, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_7, author: user_1, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },

                 { post: post_8, author: user_1, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, author: user_1, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, author: user_1, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, author: user_1, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, author: user_1, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, author: user_1, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, author: user_1, text: 'This is user 1 comment in post 1 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, author: user_1, text: 'This is user 2 comment in post 2 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, author: user_1, text: 'This is user 1 comment in post 3 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },
                 { post: post_8, author: user_1, text: 'This is user 2 comment in post 4 Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum in cumque officiis dicta similique vitae!' },

               ])

p "Created #{Comment.count} Comments"

# Like seeds
Like.create([
  { post: post_1, author: user_2 },
  { post: post_2, author: user_2 },
  { post: post_3, author: user_2 },
  { post: post_4, author: user_2 },
  { post: post_5, author: user_1 },
  { post: post_6, author: user_1 },
  { post: post_7, author: user_1 },
  { post: post_8, author: user_1 },
])

p "Created #{Like.count} Likes"
