class AfeilController < ApplicationController
	def index
	end

	def html5
	end
	
	def qbaby
		#@babyrecords = BabyRecord.order(datetime: :desc, record_time: :desc)
		date = Time.now
		@babyrecords = BabyRecord.where( ["datetime BETWEEN ? AND ?", ( date - 3.days ).beginning_of_day.utc, date.end_of_day.utc]).order( datetime: :desc, record_time: :desc)
	end

	def new
		@babyrecord = BabyRecord.new
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
