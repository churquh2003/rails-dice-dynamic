class DiceController < ApplicationController
  def home
    # This is for the root path where the main dice options are listed
  end

  def roll
    @dice_count = params[:dice_count].to_i
    @sides = params[:sides].to_i
    @results = Array.new(@dice_count) { rand(1..@sides) } # Rolls dice

    # Setting dynamic heading text for the view
    @heading_text = "#{@dice_count}d#{@sides}"
  end
end
