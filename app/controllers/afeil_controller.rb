class AfeilController < ApplicationController
	def index
	end

	def html5
	end
	
	def qbaby
		@babyrecords = BabyRecord.all
	end

	def new
		@babyrecord = BabyRecord.new
	  #@babyrecord.datetime = Time.now.strftime("%Y-%m-%d %H:%M")
		@babyrecord.datetime = Time.now
		@babyrecord.record_time = Time.now.strftime("%H:%M")
	end

	def create
		@babyrecord = BabyRecord.new( record_params )
		@babyrecord.datetime = Time.now
		if @babyrecord.save
		  redirect_to baby_index_path
		else
			render 'new'
		end
	end

	private 
	def record_params
		params.require(:babyrecord).permit(:datetime, :record_time, :capacity )
	end

end
