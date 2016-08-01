class IssueTemplateForm
  include ActiveModel::Model

  def self.permitted_params
    %i(title body organization repository)
  end

  attr_accessor(*permitted_params)
  attr_accessor :issue_template

  with_options presence: true do
    validates :title
    validates :body
    validates :organization
    validates :repository
  end

  def save!
    org = Organization.find_or_create_by!(slug: organization)
    repo = org.repositories.find_or_create_by!(slug: repository)
    self.issue_template = repo.issue_templates.create!(title: title, body: body)
  end

  def save
    return false unless valid?

    save!

    true
  end
end
