user1 = User.where(email: "test1@example.com").first_or_create(password: "password", password_confirmation: "password")
user2 = User.where(email: "test2@example.com").first_or_create(password: "password", password_confirmation: "password")

cobblestone_hill = [
    {   street: "Shirewood Lane",
        unit: "3",
        hill: "Cobblestone Hill",
        square_footage: 1467,
        price: "800 Castars",
        bedrooms: 4,
        bathrooms: 3.5,
        pets: "3",
        image: "https://www.nztravelorganiser.com/wp-content/uploads/2019/09/hobbiton-1024x683.jpg"
    }
]

hedgehog_hill = [
    {   street: "Mossy Hollow Road",
        unit: "6",
        hill: "Hedgehog Hill",
        square_footage: 900,
        price: "500 Castars",
        bedrooms: 2,
        bathrooms: 1.5,
        pets: "2",
        image: "https://www.neverendingvoyage.com/wp-content/uploads/2020/04/main-hobbiton-new-zealand.jpg"
    },
    {   street: "Toadstool Trail",
        unit: "9",
        hill: "Hedgehog Hill",
        square_footage: 650,
        price: "200 Castars",
        bedrooms: 1,
        bathrooms: 1,
        pets: "1",
        image: "https://www.pnwbeyond.com/wp-content/uploads/2018/07/Hobbit-House-full-view.jpg"
    }
]

cobblestone_hill.each do |shack|
    user1.shacks.create(shack)
    p "creating: #{shack}"
end

hedgehog_hill.each do |shack|
    user2.shacks.create(shack)
    p "creating: #{shack}"
end


