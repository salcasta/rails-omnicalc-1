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

  def payment_form
    render ({ :template => "math_templates/payment_form"})
  end

  def payment_result
    @interest = ((params.fetch("apr").to_f / 100) / 12)
    @years = params.fetch("num_year").to_i * 12
    @amount = (params.fetch("num_amount").to_f)
    
    @numerator = @interest * @amount
    @denominator = 1 - ((1 + @interest) ** -@years)
    
    @payment = @numerator / @denominator
    
    if params.fetch("num_year").length > 0 
      @display_year = params.fetch("num_year")
    else 
      @display_year = "0"
    end
    
    #@display_apr = (params.fetch("apr").to_f).round(4).to_fs(:percentage)
    @display_apr = result = format("%.4f", (params.fetch("apr").to_f))
    @display_amount = (params.fetch("num_amount").to_f).to_fs(:currency)
    @display_payment = (@numerator / @denominator).to_fs(:currency)

    render ({ :template => "math_templates/payment_result"})
  end

  def random_form
    render ({ :template => "math_templates/random_form"})
  end

  def random_result
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
  
    @random = rand(@min..@max)
    
    render ({ :template => "math_templates/random_result"})
  end
end
