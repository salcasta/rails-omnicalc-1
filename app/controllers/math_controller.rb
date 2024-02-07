class MathController < ApplicationController
  def main_page
    render ({ :template => "math_templates/square_new"})
  end

  def square_result
    @the_num = params.fetch("number").to_f
    @the_result = @the_num ** 2 

    render ({ :template => "math_templates/square_result"})
  end

  def square_root_form

    render ({ :template => "math_templates/square_root_form"})
  end

  def square_root_result
    @the_num = params.fetch("number").to_f
    @the_result = Math.sqrt(@the_num)

    render ({ :template => "math_templates/square_root_result"})
  end
end
