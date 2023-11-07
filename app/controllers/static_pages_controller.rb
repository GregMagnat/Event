class StaticPagesController < ApplicationController
  def index
  end

  def secret
  end

  before_action :authenticate_user!, only: [:secret]
end
