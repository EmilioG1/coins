class Coins
  
  attr_accessor(:num, :quarter, :dime, :nickle, :penny)

  def initialize(num)
    @num = num
    @quarter = quarter
    @dime = dime
    @nickle = nickle
    @penny = penny
    @output_array =[]
  end
  
  def money_converter
    @quarter = 0
    @dime = 0
    @nickle = 0
    @penny = 0
    until (@num < 0.25) 
      @num -= 0.25
      @quarter += 1
    end
    until (@num < 0.10)
      @num -= 0.10
      @dime += 1
    end
    until (@num < 0.05)
      @num -= 0.05
      @nickle += 1
    end
    until (@num < 0.001)
      @num -= 0.01
      @penny += 1
    end
    until (@num == 0.00)
      break
    end
    @output_array.push(@quarter)
    @output_array.push(@dime)
    @output_array.push(@nickle)
    @output_array.push(@penny)
    
  end
end