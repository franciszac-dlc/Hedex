Rails.application.routes.draw do
  devise_for :principals, :controllers => { registrations: 'registrations' }
  root to: 'institutions#index'
  resources :sections
  resources :teachers
  resources :tesda_courses
  resources :tesda_course_sectors
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
