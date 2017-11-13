Rails.application.routes.draw do
  resources :institutions_inst_contacts
  resources :inst_contacts
  resources :data_records
  resources :tuitions
  resources :faculty_headcounts
  resources :regional_data_records
  resources :regions
  devise_for :principals, :controllers => { registrations: 'registrations' }
  root to: 'institutions#index'
  resources :sections
  resources :teachers
  resources :tesda_courses
  resources :tesda_course_sectors
  resources :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
