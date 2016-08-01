class Repository < ApplicationRecord
  has_many :issue_templates
  belongs_to :organization
end
