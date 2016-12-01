Rails.application.routes.draw do
  root "dinosaurs#index"

 get "dinosaurs" => "dinosaurs#index"
 get "dinosaurs/:id" => "dinosaurs#show", as: :dinosaur
 get "dinosaurs/new" => "dinosaurs#new", as: :new_dinosaur
 get 'dinosaurs/:id/edit' => 'dinosaurs#edit', as: :edit_dinosaur

patch "dinosaurs/:id" => "dinosaurs#update"
end
