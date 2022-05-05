require('rspec')
require('pry')
require('coins')

describe('#money_converter') do
  it('should take .25 and return 1 quarter') do
    cash = Coins.new(0.25)
    expect(cash.money_converter).to(eq([1, 0, 0, 0]))
  end
  it('should take .10 and return 1 dime') do
    cash = Coins.new(0.10)
    expect(cash.money_converter).to(eq([0,1,0, 0]))
  end
  it('should take .05 and return 1 nickle') do
    cash = Coins.new(0.05)
    expect(cash.money_converter).to(eq([0, 0, 1, 0]))
  end
  it('should take .01 and return 1 penny') do
    cash = Coins.new(0.01)
    expect(cash.money_converter).to(eq([0,0,0,1]))
  end
  it('should take .02 and return 2 pennies') do
    cash = Coins.new(0.02)
    expect(cash.money_converter).to(eq([0,0,0,2]))
  end
  it('should take .41 and return 1 quarter, 1 dime, 1 nickle, 1penny') do
    cash = Coins.new(0.41)
    expect(cash.money_converter).to(eq([1, 1, 1, 1]))
  end
  it('should take .25 and return 1 quarter') do
    cash = Coins.new(0.25)
    expect(cash.money_converter).to(eq([1,0,0,0]))
  end
end