User.create!(
  name: "Alice",
  email: "alice@example.com",
  password: "password123",
  password_confirmation: "password123"
)

User.create!(
  name: "Bob",
  email: "bob@example.com",
  password: "secret456",
  password_confirmation: "secret456"
)

User.create!(
  name: "Charlie",
  email: "charlie@example.com",
  password: "mysecurepass",
  password_confirmation: "mysecurepass"
)
