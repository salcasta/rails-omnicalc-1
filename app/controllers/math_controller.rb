class MathController < ApplicationController
  def main_page
    render ({ :template => "math_templates/square_new"})
  end

  def square_result
    @the_num = params.fetch("number").to_f
    @the_result = @the_num ** 2 
    
    render ({ :template => "math_templates/square_result"})
  end
end
