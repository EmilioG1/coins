#!/usr/bin/ruby
require('./lib/coins')

puts 'hello type a number'
string = gets.chomp
integer = string.to_f
puts integer
cash = Coins.new(integer)
puts cash.money_converter()