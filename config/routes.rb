Menus::Application.routes.draw do
  root to: 'home#index'
  match 'mobile', to: 'mobile#index'
end
