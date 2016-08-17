class PeopleController < ApplicationController
  def new
    @person = Person.new
    @person_count = Person.all.count
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to new_person_path
    end
  end

  private

  def person_params
    params.require(:person).permit(:first_name, :last_name, :gender, :address, :city, :state)
  end
end
