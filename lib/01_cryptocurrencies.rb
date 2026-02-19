# 01_cryptocurrencies.rb
# Projet Data Scientist - Partie Blockchain
# Objectif : manipuler deux arrays (cryptos et prix) et les transformer en un hash





currencies = ["Bitcoin", "Ethereum", "XRP", "Bitcoin Cash", "EOS", "Litecoin", "Cardano", "Stellar", "IOTA", "Tether"] 
prices = ["6558.07", "468.95", "0.487526", "762.84", "8.86", "85.26", "0.151268", "0.206756", "1.18", "0.998033"]




# -----------------------------
# 2. Fusion en hash
# -----------------------------
# On associe chaque crypto à son prix avec .zip puis Hash[]
crypto_hash = Hash[currencies.zip(prices.map(&:to_f))]

# Exemple : crypto_hash["Bitcoin"] => 6558.07

# -----------------------------
# 3. Analyses demandées
# -----------------------------

# a) Afficher toutes les cryptos avec leur prix
puts "👉 Liste des cryptos et leurs prix :"
crypto_hash.each do |name, price|
  puts "#{name} : #{price} $"
end

# b) Trouver la crypto la plus chère
most_expensive = crypto_hash.max_by { |name, price| price }
puts "👉 La crypto la plus chère est #{most_expensive[0]} avec un prix de #{most_expensive[1]} $."

# c) Trouver la crypto la moins chère
cheapest = crypto_hash.min_by { |name, price| price }
puts "👉 La crypto la moins chère est #{cheapest[0]} avec un prix de #{cheapest[1]} $."

# d) Trier les cryptos par prix (du plus bas au plus haut)
sorted_by_price = crypto_hash.sort_by { |name, price| price }
puts "👉 Classement des cryptos par prix (du moins cher au plus cher) :"
sorted_by_price.each do |name, price|
  puts "#{name} : #{price} $"
end



#c) Le nombre de crypto contenant le mot "coin"
count_coin = currencies.count { |name| name.downcase.include?("coin") }
puts "\n🔎 Nombre de cryptos contenant 'coin' : #{count_coin}"


# e) # On sélectionne uniquement les devises dont le prix est < 6000
under_6000 = crypto_hash.select { |name, price| price < 6000 }
puts "👉 Devises avec un cours inférieur à 6000 $ :"
under_6000.each do |name, price|
    puts "#{name} : #{price} $"
end



# d) La devise la plus chère parmi celles dont le cours est inférieur à 6000.
# On filtre uniquement les cryptos dont le prix est < 6000
  filtered = crypto_hash.select { |name, price| price < 6000 }
# Parmi celles-ci, on prend la plus chère
  most_expensive_under_6000 = filtered.max_by { |name, price| price }
  puts "👉 La devise la plus chère sous 6000 $ est #{most_expensive_under_6000[0]} avec un prix de #{most_expensive_under_6000[1]} $."



# -----------------------------
# 4. Bonus : menu interactif
# -----------------------------
puts "\n🎉 Menu interactif 🎉"
puts "Choisis une option :"
puts "1 - Afficher toutes les cryptos"
puts "2 - Crypto la plus chère"
puts "3 - Crypto la moins chère"
puts "4 - Trier les cryptos par prix"
puts "5 - Nombre de cryptos contenant 'coin'"
puts "6 - Devises sous 6000 $"
puts "7 - Crypto la plus chère parmi celles sous 6000 $"

choice = gets.chomp.to_i

case choice
when 1
  crypto_hash.each { |name, price| puts "#{name} : #{price} $" }
when 2
  puts "👉 La crypto la plus chère est #{most_expensive[0]} avec #{most_expensive[1]} $."
when 3
  puts "👉 La crypto la moins chère est #{cheapest[0]} avec #{cheapest[1]} $."
when 4
  sorted_by_price.each { |name, price| puts "#{name} : #{price} $" }
when 5
    puts "👉 Le nombre de cryptos contenant 'coin' est #{count_coin}."
when 6
    puts "👉 Devises avec un cours inférieur à 6000 $ :"
    under_6000.each { |name, price| puts "#{name} : #{price} $" }
when 7
    puts "👉 La devise la plus chère sous 6000 $ est #{most_expensive_under_6000[0]} avec #{most_expensive_under_6000[1]} $."
else
  puts "❌ Choix invalide."
end
