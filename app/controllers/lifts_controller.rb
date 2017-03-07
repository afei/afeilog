class LiftsController < ApplicationController
	layout "lifts"
  def index
		@companies = Company.search( params[:search] )
  end
end
