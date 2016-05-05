Fabricator(:person) do
  part_type {Faker::Lorem.word}
  info {Faker::Lorem.sentenc}
  price {Faker::Number.decimal(2, 3)}
  computer
end
