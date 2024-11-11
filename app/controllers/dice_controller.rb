class DiceController < ApplicationController
  def home
    # No additional logic needed for the home page
  end

  def roll
    @dice_count = params[:dice_count].to_i
    @sides = params[:sides].to_i
    @results = Array.new(@dice_count) { rand(1..@sides) }
    @heading_text = "#{@dice_count}d#{@sides}"
  end
end
