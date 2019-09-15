def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, input_cash)
  return shop[:admin][:total_cash] += input_cash
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_of_added_pets)
  return shop[:admin][:pets_sold] += number_of_added_pets
end

#tried moving this above stock count,
#not working atm

# def add_pet_to_stock(shop, new_pet_hash)
#   new_pet_hash.merge(shop[:pets])
# end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed_type)
pets = []
  for breed in shop[:pets]
    pets.push(breed[:name]) if breed[:breed] == breed_type
    end
  return pets
end

def find_pet_by_name(shop, name_of_pet)
  for pet in shop[:pets]
    return pet if pet[:name] == name_of_pet
  end
return nil
end

#not working atm

# def remove_pet_by_name(shop, name_of_pet)
#   pets_to_be_removed = []
#   for pet in shop[:pets]
#     if pet[:name] = name_of_pet
#       pet[:name] = pets_to_be_removed
#     end
#   end
# end

def customer_cash(customers_hash)
  return customers_hash[:cash]
end

def remove_customer_cash(customer, cash_removed)
  return customer[:cash] -= cash_removed
end

def customer_pet_count(customer)
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet_hash)
  customer[:pets] << new_pet_hash
end#

def customer_can_afford_pet(customer, new_pet_hash)
  if customer[:cash] >= new_pet_hash[:price]
    return true
  end
  return false
end

#only works with one pet on the first part, very wrong atm

def sell_pet_to_customer(shop, pet, customer)
  customer[:cash] -= pet[:price]
  shop[:admin][:total_cash] += pet[:price]
  shop[:admin][:pets_sold] += 1
  customer[:pets] << shop[:pets][3]
end
