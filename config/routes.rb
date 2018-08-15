Rails.application.routes.draw do
  get 'sessions/new'

    root to: 'blogs#top'
    resources :blogs do
        collection do
          post :confirm
        end
    end
    resources :sessions, only:[:new,:create,:destroy]
    resources :users
end
