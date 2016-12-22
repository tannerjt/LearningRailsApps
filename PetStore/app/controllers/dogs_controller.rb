class DogsController < ApplicationController
  before_action :find_dog, only: [:edit, :update, :show, :destroy]
  before_action :authenticate_breeder!, only: [:edit, :new, :create, :update, :destroy]
  def index
    @dogs = Dog.all
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.breeder = current_breeder
    if @dog.save
      redirect_to @dog
    else
      render 'new'
    end
  end

  def new
    @dog = Dog.new
  end

  def edit
  end

  def show
  end

  def update
    if @dog.update(dog_params)
      flash[:notice] = 'Dog Updated'
      redirect_to @dog
    else
      render 'edit'
    end
  end

  def destroy
    @dog.destroy
    redirect_to root_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :gender, :price, :DogImage)
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end

end
