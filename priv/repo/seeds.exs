alias AwkwardInside.Repo
alias AwkwardInside.Store.{User, OrderStatus, Product, Cart, CartItem, Order, OrderItem}

# 1. Insert Order Statuses
Repo.insert!(%OrderStatus{status: "PENDING"})
Repo.insert!(%OrderStatus{status: "PAID"})
Repo.insert!(%OrderStatus{status: "SHIPPED"})
Repo.insert!(%OrderStatus{status: "CANCELLED"})

# 2. Insert Products
p1 = Repo.insert!(%Product{name: "Elixir in Action", price: 1500.00, qty: 50})
p2 = Repo.insert!(%Product{name: "Mechanical Keyboard", price: 3500.00, qty: 20})
p3 = Repo.insert!(%Product{name: "Coffee Beans 500g", price: 450.00, qty: 100})

# 3. Insert Users
user1 = Repo.insert!(%User{username: "john_doe"})
user2 = Repo.insert!(%User{username: "jane_smith"})

# 4. Insert Carts
cart1 = Repo.insert!(%Cart{user_id: user1.id})

# 5. Insert Cart Items (John adds keyboard to cart)
Repo.insert!(%CartItem{cart_id: cart1.id, product_id: p2.id, qty: 1})

# 6. Insert Order (Jane buys Elixir book & Coffee)
order1 = Repo.insert!(%Order{
  user_id: user2.id,
  status: "PAID",
  address: "123 Elixir St, BKK 10110",
  price: 1950.00
})

# 7. Insert Order Items
Repo.insert!(%OrderItem{order_id: order1.id, product_id: p1.id, price: 1500.00, qty: 1})
Repo.insert!(%OrderItem{order_id: order1.id, product_id: p3.id, price: 450.00, qty: 1})

IO.puts "Seed data inserted successfully!"
