Rails.application.routes.draw do
  resources :contacts
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  resources :feeds do 
    collection do
      post :confirm
    end
  end
end
