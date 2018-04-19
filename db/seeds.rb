# frozen_string_literal: true

require 'csv'

csv_text = File.read(Rails.root.join('data', 'services.csv'))
csv = CSV.parse(csv_text.scrub, headers: true)
csv.each do |row|
  row = row.to_hash
  s = Service.new
  s.name = row['name']
  s.description = row['description']
  s.category = row['category']
  s.image = row['image']
  s.save
  puts "#{s.name} saved"
end

puts "There are now #{Service.count} rows in the service table"
