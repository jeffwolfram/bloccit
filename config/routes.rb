Rails.application.routes.draw do
resources :topics do
resources :posts, except: [:index]
resources :advertisements, except: [:index]



end


get 'about' => 'welcome#about'

  get 'welcome/contact'

  get 'welcome/faq'

root 'welcome#index'
end
