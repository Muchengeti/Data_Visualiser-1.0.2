Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :datasets, param: :figshare_id, only: [:index, :show] do
    get 'metadata', action: :metadata, controller: 'datasets'
  end  
end
