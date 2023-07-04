puts "🌱 Seeding data..."

# Clear existing data
Review.delete_all
Bike.delete_all
User.delete_all

# Create users
user1 = User.create(name: "Tom", email: "tom@example.com", password: "password")
user2 = User.create(name: "Fina", email: "fina@example.com", password: "password")
user3 = User.create(name: "Mike", email: "mike@example.com", password: "password")
user4 = User.create(name: "Sarah", email: "sarah@example.com", password: "password")

# Create bikes
bike1 = Bike.create(name: "Honda CB500F", description: "Great commuter bike", user: user1, image: "https://www.cycleworld.com/resizer/BwvAaxrrOx7SiiQVgci7ByTog_I=/1440x0/filters:focal(1046x812:1056x822)/cloudfront-us-east-1.images.arcpublishing.com/octane/TDMSQYPK7VDVFGVAG24F6QNY4Y.jpg")
bike2 = Bike.create(name: "Yamaha MT-07", description: "Powerful naked bike", user: user1, image: "https://cdn2.yamaha-motor.eu/prod/product-assets/2023/MT07A/2023-Yamaha-MT07A-EU-Icon_Blue-Studio-001-03.jpg")
bike3 = Bike.create(name: "Kawasaki Ninja 650", description: "Sporty middleweight bike", user: user3, image: "https://cdni.autocarindia.com/Utils/ImageResizer.ashx?n=https://cdni.autocarindia.com/ExtraImages/20191009045305_2020-Kawasaki-Ninja-650.jpg&w=700&q=90&c=1")
bike4 = Bike.create(name: "Suzuki SV650", description: "Versatile V-twin bike", user: user4, image: "https://cdp.azureedge.net/products/USA/SU/2023/MC/STREETSTD/SV650/50/GLASS_SPARKLE_BLACK_-_SOLID_IRON_GRAY/2000000001.jpg")
bike5 = Bike.create(name: "BMW S1000RR", description: "High-performance sport bike", user: user1, image: "https://imgd.aeplcdn.com/600x600/n/cw/ec/135917/s1000rr-2023-left-side-view.jpeg?isig=0")
bike6 = Bike.create(name: "Ducati Monster 821", description: "Iconic naked bike", user: user2, image: "https://cdnmedia.endeavorsuite.com/images/catalogs/17473/products/detail/5f2ba63c-5c95-4cbc-9eaa-69d312ec170d.jpg")

# Create reviews
Review.create(content: "Nice bike!", user: user2, bike: bike1)
Review.create(content: "Love the color.", user: user3, bike: bike1)
Review.create(content: "Great choice!", user: user1, bike: bike2)
Review.create(content: "I have the same one.", user: user4, bike: bike2)
Review.create(content: "Awesome bike!", user: user1, bike: bike3)
Review.create(content: "Would love to ride it.", user: user4, bike: bike3)
Review.create(content: "Classic model.", user: user3, bike: bike4)
Review.create(content: "How's the mileage?", user: user2, bike: bike4)
Review.create(content: "Expensive but worth it.", user: user4, bike: bike5)
Review.create(content: "Fastest bike in its class.", user: user3, bike: bike5)
Review.create(content: "My dream bike!", user: user2, bike: bike6)
Review.create(content: "Looks stunning.", user: user1, bike: bike6)

puts "Seeding completed successfully!"

puts "✅ Done seeding!"
