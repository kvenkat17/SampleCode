class CustomersController < ApplicationController
  def nextappt
  	@next = execute("select 'venkat' as names from dual")
  end
end
