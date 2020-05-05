ActiveAdmin.register QuestionGroup do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :assessment_id, :title, :form_type

  index do
    selectable_column
    id_column
    column :assessment do |qg|
      if qg.assessment.present?
        link_to qg.assessment.label, "/admin/assessments/#{qg.assessment.id}"
      else
        status_tag('Empty')
      end
    end
    column :title
    actions
  end

  form do |f| 
    f.inputs "Question Group" do
      f.input :assessment, member_label: Proc.new { |c| "#{c.label}"}
      f.input :title
      f.input :form_type
    end
    f.actions
  end
end
