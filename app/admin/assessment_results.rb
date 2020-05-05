ActiveAdmin.register AssessmentResult do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :content, :label, :assessment_id
  
  form do |f| 
    f.inputs "Assessment Result" do
      f.input :assessment, member_label: Proc.new { |c| "#{c.label}"}
      f.input :label
      f.input :title
      f.input :content
    end
    f.actions
  end
  
end
