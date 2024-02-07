class MathController < ApplicationController
  def main_page
    render ({ :template => "math_templates/square_new"})
  end
end
