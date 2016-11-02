ActiveRecord::Base.transaction do
  # TC Wu
  # Staging seed file, will re-init the database in terms of records but leave primary keys alone
  Order.destroy_all
  

  $num = 100
  
  $num.times do |i|
    order = Order.create(
              name: Faker::Commerce.product_name,
              description: Faker::Lorem.sentence,
            )  
  end

  p "Created #{Order.all.count} orders"
end
