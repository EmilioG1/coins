#!/usr/bin/ruby
require('./lib/coins')

puts 'Hello, please enter an amount of money'
string = gets.chomp
integer = string.to_f
puts integer
cash = Coins.new(integer)
puts "You have #{cash.money_converter[0]} quarters, #{cash.money_converter[1]} dimes,  #{cash.money_converter[2]} nickles, and #{cash.money_converter[3]} pennies"