ActiveAdmin.register Matiere do
	permit_params :name, :image, :deust_id, :semester_id

	form do |f|
    f.inputs "Project Details" do
      f.input :name
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:large))
      # Will preview the image when the object is edited
      f.input :semester, as: :select, collection: Semester.all
      f.input :deust, as: :select, collection: Deust.all
    end
    f.actions
  end

end
