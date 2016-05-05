Fabricator(:part) do
  part_type {Faker::Lorem.word}
  info {Faker::Lorem.sentence}
  price {Faker::Number.decimal(2, 3)}
  computer
end
