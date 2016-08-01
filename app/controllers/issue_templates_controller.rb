class IssueTemplatesController < ApplicationController
  def new
    @form = IssueTemplateForm.new
  end

  def show
    @issue_template = IssueTemplate.find(params[:id])
  end

  def create
    @form = IssueTemplateForm.new(params.require(:issue_template_form).permit(IssueTemplateForm.permitted_params))

    if @form.save
      redirect_to @form.issue_template
    else
      render :new
    end
  end
end
