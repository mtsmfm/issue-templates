Rails.application.routes.draw do
  root to: 'issue_templates#new'
  resources :new_issue_urls, only: :show, path: '/'
  resources :issue_templates, path: :templates, only: %i(new show create)
end
