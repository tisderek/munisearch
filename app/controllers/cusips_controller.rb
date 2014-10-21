 class CusipsController < ApplicationController
 	
 	def new
 	end

 	def create
 		@cusips = Cusip.new(params[:cusip, :issuer, :coupon, :maturity])

 		@cusip.save
 		redirect_to @cusip
 	end

 	# private
 	# 	def cusip_params
 	# 		params.require(:cusip).permit(:cusip, :issuer, :coupon, :maturity)
 	# 	end	

 	def show
 		@cusip = cusip.find(params[:id])
 	end

 	def index
 		@cusips = cusip.all
 	end


end
