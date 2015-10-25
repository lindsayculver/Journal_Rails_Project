Rails.application.routes.draw do
  devise_for :users
  root to: "static_pages#landing_page"

  get "/journal", to: "entries#index", as: "journal"
  resources :entries do
    collection do
      put :update_multiple
    end
  end
end
