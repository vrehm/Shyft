class ShopsController < ApplicationController
  skip_after_action  :verify_authorized
  skip_after_action :verify_policy_scoped
  def create
  end
end
