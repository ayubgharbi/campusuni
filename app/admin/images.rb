ActiveAdmin.register Image do
	permit_params :image, :deust_id, :semester_id, :matiere_id, :post_id
end
