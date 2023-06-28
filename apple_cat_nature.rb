# Basic Mindful Business Class
class MindfulBusiness
  attr_accessor :name, :cause, :mission, :impact, :products
  
  # Initialize Class
  def initialize(name, cause, mission, impact, products)
    @name = name 
    @cause = cause 
    @mission = mission 
    @impact = impact 
    @products = products 
  end
  
  # Method to define company name
  def set_name(name)
    @name = name 
  end
  
  # Method to define company mission
  def set_mission(mission)
    @mission = mission
  end
  
  # Method to determine company cause
  def set_cause(cause)
    @cause = cause
  end
  
  # Method to define potential impact
  def set_impact(impact)
    @impact = impact
  end
  
  # Method to define products or services
  def set_products(products)
    @products = products
  end
  
  # Method to calculate positive impact
  def calculate_impact
    # sum up all of the impact values in products
    total_impact = 0
    @products.each do |product|
      total_impact += product.impact
    end
    
    return total_impact
  end
  
  # Method to list products
  def list_products
    # iterate through the product array and print out each value
    @products.each do |product|
      puts product
    end
  end
  
  # Method to print out mission statement
  def print_mission
    puts @mission
  end
  
  # Method to print out report of impact
  def impact_report
    puts "Company Name: #{@name}"
    puts "Company Mission: #{@mission}"
    puts "Company Cause: #{@cause}"
    puts "Company Impact: #{@impact}"
    puts "Total Impact: #{calculate_impact}"
  end
end

# Product Class
class Product
  attr_accessor :name, :impact
  
  # Initialize Class
  def initialize(name, impact)
    @name = name 
    @impact = impact 
  end
  
  # Method to define product name
  def set_name(name)
    @name = name 
  end
  
  # Method to define product impact
  def set_impact(impact)
    @impact = impact
  end
  
  # Method to print out product information
  def print_info
    puts "Name: #{@name}"
    puts "Impact: #{@impact}"
  end
end

# create instance of MindfulBusiness class
business = MindfulBusiness.new("Mindful Business", "Environment", "To sustainably impact people and the planet", 1000, [])

# create instance of Product class
product1 = Product.new("Eco-Friendly Soap", 200)
product2 = Product.new("Organic Clothing", 500)
product3 = Product.new("Recycled Bags", 300)

# add products to array
business.products = [product1, product2, product3]

# print out mission statement
business.print_mission

# print out product info
business.list_products

# print out impact report
business.impact_report