class PeopleController < ApplicationController
  def new
    @person = Person.new
    @person_count = Person.all.count
  end

  def create
    @person = Person.new(person_params)
    p params
    if @person.save
      redirect_to new_person_path
    else
      p 'missing fields'
    end
  end

  private

  def person_params
    params.require(:person).permit(:first_name, :last_name, :gender, :address, :city, :state)
  end
end
