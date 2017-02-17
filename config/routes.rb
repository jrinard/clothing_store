Rails.application.routes.draw do
root :to => 'sessions#new'
get "/log-in" => "sessions#new"
post "/log-in" => "sessions#create"
get "/log-out" => "sessions#destroy", as: :log_out #custom path

resources :users

resources :outfits do
  # resources :comment
end

end
