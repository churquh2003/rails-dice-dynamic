Rails.application.routes.draw do
  root "dice#home"
  get "/dice/:dice_count/:sides", to: "dice#roll"
end

