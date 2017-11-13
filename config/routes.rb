Rails.application.routes.draw do
  resources :sections
  resources :teachers
  resources :tesda_courses
  resources :tesda_course_sectors
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
