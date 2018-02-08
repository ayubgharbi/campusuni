class WelcomeController < ApplicationController
skip_before_action :authorize

  def index
  	@gegm = Deust.first
  	@semesters = Semester.all.order("created_at ASC")
  	@matieres = Matiere.all
  end
end
