Rails.application.routes.draw do

  resources :books
  root :to => 'bookers#top'
  
  patch 'books/edit/:id', to: 'books#update', as: 'update_books'
  delete 'books/:id' => 'books#destroy', as: 'destroy_books'
end
