class PeopleController < ApplicationController
  def index
    @people = Person.count
  end
end
