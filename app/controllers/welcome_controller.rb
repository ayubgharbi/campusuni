class WelcomeController < ApplicationController

  def index
  	@gegm = Deust.first
  	@semesters = Semester.all.order("created_at ASC")
  	@matieres = Matiere.all
  end
end
