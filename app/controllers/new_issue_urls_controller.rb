class NewIssueUrlsController < ApplicationController
  def show
    redirect_to IssueTemplate.find(params[:id]).new_issue_url
  end
end
