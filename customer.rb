# #  TDD  Unit test   ruby customer_test.rb
# #1.
# require "test/unit"  # to test unit eg using gem
#
# #:: is the scope of to go inside the clas
# #search through object base
# class Customertest < Test::Unit::TestCasedef
#   def test_full_name
#   end
# end
# #############
# #2.
# require "test/unit"  # to test unit eg using gem
# class Customertest < Test::Unit::TestCasedef
#   def test_full_name
#   end
# end
# ############
# #3.
# require "test/unit"  # to test unit eg using gem
# require_relative'customer'
#
# class Customertest < Test::Unit::TestCasedef
#   def test_full_name
#   end
#
# endequire "test/unit"  # to test unit eg using gem
# require_relative'customer'
#
# class Customertest < Test::Unit::TestCasedef
#   def test_full_name
#
#    customer = Customer.new("Peter", "Kochi")
#    assert_equal(expected, actual, msg)
#   end
#
# end
# #############
# #4.
# require "test/unit"  # to test unit eg using gem
# require_relative'customer'
#
# class Customertest < Test::Unit::TestCasedef
#   def test_full_name
#
#    customer = Customer.new("Peter", "Koch")
#    assert_equal(expected, actual, msg)
#   end
#
# end
# ##############
# #5.
# require "test/unit"  # to test unit eg using gem
# require_relative'customer'
#
# class Customertest < Test::Unit::TestCasedef
#   def test_full_name
#    customer = Customer.new("Peter", s"Koch")
#    actual = customer.full_name
#    expected = "Peter Koch"
#    msg = "Full name should be Peter Koch"
#    customer = Customer.new("Peter", "Koch")
#    assert_equal(expected, actual, msg)
#   end
# end
# ##############
# #6.
# #   "#{{@fisrt}}""#{{@last}}, trim
# ###############
#Peter customer test#


class Customer
  def initialize(first, last)
    @first = first.strip
    @last = last.strip
  end

  def full_name
  	# if no last name, return only first name
  	if @last == ""
  	  @first
    else
  	  "#{@first} #{@last}"
    end
  end
end

class VIPCustomer < Customer
end

peter = Customer.new("Peter", "")
puts peter.full_name
taka = Customer.new("Taka", "")
puts taka.full_name
