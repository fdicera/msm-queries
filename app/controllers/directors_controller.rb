class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")
    matching_records = Director.where({ :id => the_id})
    @the_director = matching_records.at(0)
    render({ :template => "director_templates/details"})
  end

  def young
    @young_dob = Director.maximum(:dob)
    @young_person = Director.where({:dob => @young_dob})
    render({ :template => "director_templates/young_details"})
  end

  def old
    the_id = params.fetch("the_id")
    matching_records = Director.where({ :id => the_id})
    @the_director = matching_records.at(0)
    render({ :template => "director_templates/old_details"})
  end

end
