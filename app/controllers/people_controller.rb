class PeopleController < ApplicationController
  def index
    @people = Person.all
  end
  
  def new
    @person = Person.new
  end
  
  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path
    else
      render "new"
    end
  end
  
  def destroy
    Person.find(params[:id]).destroy
    redirect_to people_path
  end
  
private

  def person_params
    params.require(:person).permit(:name, :email)
  end
end
