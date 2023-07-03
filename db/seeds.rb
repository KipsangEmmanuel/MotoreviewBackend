puts "🌱 Seeding spices..."

# Seed your database here
# Clear existing data
Review.delete_all
Bike.delete_all
User.delete_all

# Create users
user1 = User.create(name: "Tom", email: "Tom@example.com", password_digest: "password", created_at: DateTime.now, updated_at: DateTime.now)
user2 = User.create(name: "Fina", email: "Fina@example.com", password_digest: "password", created_at: DateTime.now, updated_at: DateTime.now)
user3 = User.create(name: "Mike", email: "Mike@example.com", password_digest: "password", created_at: DateTime.now, updated_at: DateTime.now)
user4 = User.create(name: "Sarah", email: "Sarah@example.com", password_digest: "password", created_at: DateTime.now, updated_at: DateTime.now)

# Create bikes
bike1 = user1.bikes.create(name: "Honda CB500F", description: "Great commuter bike", created_at: DateTime.now, updated_at: DateTime.now)
bike2 = user2.bikes.create(name: "Yamaha MT-07", description: "Powerful naked bike", created_at: DateTime.now, updated_at: DateTime.now)
bike3 = user3.bikes.create(name: "Kawasaki Ninja 650", description: "Sporty middleweight bike", created_at: DateTime.now, updated_at: DateTime.now)
bike4 = user4.bikes.create(name: "Suzuki SV650", description: "Versatile V-twin bike", created_at: DateTime.now, updated_at: DateTime.now)
bike5 = user1.bikes.create(name: "BMW S1000RR", description: "High-performance sport bike", created_at: DateTime.now, updated_at: DateTime.now)
bike6 = user2.bikes.create(name: "Ducati Monster 821", description: "Iconic naked bike", created_at: DateTime.now, updated_at: DateTime.now)

# Create reviews
review1 = Review.create(content: "Nice bike!", bike: bike1, user: user2, created_at: DateTime.now, updated_at: DateTime.now)
review2 = Review.create(content: "Love the color.", bike: bike1, user: user3, created_at: DateTime.now, updated_at: DateTime.now)
review3 = Review.create(content: "Great choice!", bike: bike2, user: user1, created_at: DateTime.now, updated_at: DateTime.now)
review4 = Review.create(content: "I have the same one.", bike: bike2, user: user4, created_at: DateTime.now, updated_at: DateTime.now)
review5 = Review.create(content: "Awesome bike!", bike: bike3, user: user1, created_at: DateTime.now, updated_at: DateTime.now)
review6 = Review.create(content: "Would love to ride it.", bike: bike3, user: user4, created_at: DateTime.now, updated_at: DateTime.now)
review7 = Review.create(content: "Classic model.", bike: bike4, user: user3, created_at: DateTime.now, updated_at: DateTime.now)
review8 = Review.create(content: "How's the mileage?", bike: bike4, user: user2, created_at: DateTime.now, updated_at: DateTime.now)
review9 = Review.create(content: "Expensive but worth it.", bike: bike5, user: user4, created_at: DateTime.now, updated_at: DateTime.now)
review10 = Review.create(content: "Fastest bike in its class.", bike: bike5, user: user3, created_at: DateTime.now, updated_at: DateTime.now)
review11 = Review.create(content: "My dream bike!", bike: bike6, user: user2, created_at: DateTime.now, updated_at: DateTime.now)
review12 = Review.create(content: "Looks stunning.", bike: bike6, user: user1, created_at: DateTime.now, updated_at: DateTime.now)

puts "Seeding completed successfully!"

puts "✅ Done seeding!"
