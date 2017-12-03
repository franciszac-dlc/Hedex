Rails.application.routes.draw do
  devise_for :admins
  resources :institutions do
    resources :data_records, :tuitions, :faculty_headcounts, :inst_contacts
  end
  resources :regions do
    resources :regional_data_records
  end
  devise_for :principals, :controllers => { registrations: 'registrations' }
  root to: 'institutions#index'
  resources :sections
  resources :teachers
  resources :tesda_courses
  resources :tesda_course_sectors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
