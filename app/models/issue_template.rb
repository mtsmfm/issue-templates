class IssueTemplate < ApplicationRecord
  belongs_to :repository
  has_one :organization, through: :repository

  def new_issue_url
    params = {
      title: title,
      body: body
    }
    "https://github.com/#{organization.slug}/#{repository.slug}/issues/new?#{params.to_query}"
  end
end
