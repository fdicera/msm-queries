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
    @young_person = Director.where({:dob => @young_dob}).at(0)
    @young_name = @young_person.name
    @young_id = @young_person.id
    @young_dob_string = @young_dob.strftime("%B %e, %Y")
    render({ :template => "director_templates/young_details"})
  end

  def old
    @old_dob = Director.minimum(:dob)
    @old_person = Director.where({:dob => @old_dob}).at(0)
    @old_name = @old_person.name
    @old_id = @old_person.id
    @old_dob_string = @old_dob.strftime("%B %e, %Y")
    render({ :template => "director_templates/old_details"})
  end

end
