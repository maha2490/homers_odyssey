class PlacesController < ApplicationController

	def logo_screen
		render :logo_screen
	end

	def home
		render :index
	end

	def result
		render :result
	end	

	def lodging
		lodging_array = Place.where(category: "lodging").by_distance(:origin =>[params[:lat], params[:lng]]).limit(5)
		render :json => lodging_array
	end	

	def recreation
		recreation_array = Place.where(category: "recreation").by_distance(:origin =>[params[:lat], params[:lng]]).limit(5)
		render :json => recreation_array
	end	

	def supplies
		supplies_array = Place.where(category: "supplies").by_distance(:origin =>[params[:lat], params[:lng]]).limit(5)
		render :json => supplies_array
	end
	
	def services
		services_array = Place.where(category: "services").by_distance(:origin =>[params[:lat], params[:lng]]).limit(5)
		render :json => services_array
	end
	
	def medical
		medical_array = Place.where(category: "medical").by_distance(:origin =>[params[:lat], params[:lng]]).limit(5)
		render :json => medical_array
	end			
	
end
