class LiftsController < ApplicationController
	layout "lifts"
	
  def index
		if params[:set_locale]
			redirect_to lifts_url(locale: params[:set_locale])
		else
			@companies = Company.search( params[:search] )
		end
  end
end
