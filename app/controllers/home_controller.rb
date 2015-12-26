# A simple rails app.
class HomeController < ApplicationController
  def index
    @start_at = Time.now
    @result = fib(39) # this call takes seconds to finish. Depending on what ruby it runs on
    @end_at = Time.now
  end

  def api
  end

  protected
  # Nth Fibonacci sequence item
  def fib(n)
    return n if n < 2
    fib(n-2) + fib(n-1)
  end
  
end


#
# How Parallelism Works in Ruby
#
# Thin vs Puma
# MRI  vs JRuby
#

