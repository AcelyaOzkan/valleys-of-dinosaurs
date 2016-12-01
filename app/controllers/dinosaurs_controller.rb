class DinosaursController < ApplicationController
  ApplicationController
  def index
     @dinosaurs = Dinosaur.all
  end

  def edit
     @dinosaur = Dinosaur.find(params[:id])
  end

  def update
    @dinosaur = Dinosaur.find( params[:id] )

    dinosaur_params = params.require( :dinosaur ).permit( :name, :age, :image_url )

    if @dinosaur.update_attributes( dinosaur_params )
       redirect_to @dinosaur
    else
       render 'edit'
    end
  end

end
