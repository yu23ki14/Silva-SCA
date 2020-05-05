ActiveAdmin.register QuestionItem do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :question_group_id, :label

  index do
    selectable_column
    id_column
    column :question_group do |qg|
      if qg.question_group.present?
        link_to "#{qg.question_group.title.slice(0...9)} ... #{qg.question_group.title.slice(-10...-1)}", "/admin/question_groups/#{qg.question_group.id}"
      else
        status_tag('Empty')
      end
    end
    column :label
    actions
  end

  form do |f| 
    f.inputs "QuestionItem" do
      f.input :question_group
      f.input :label
    end
    f.actions
  end
  
end
