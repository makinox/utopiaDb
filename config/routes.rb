Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :entities
      resources :users
      resources :ratings
      resources :subjects
      resources :notes
      resources :enrollments
    end
  end
end
