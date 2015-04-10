class UploadRatingsController < ApplicationController
  def index

  end

  def create
    @rating_file = Excel.new(file_name: params[:file])
    if @rating_file.save!
	  respond_to do |format|
	    format.json{ render :json => @rating_file }
	  end
    end
  end

  def symbol
      @stock = Rating.find_by_ticker(params[:id])

      respond_to do |format|
          format.html # { render layout: false } # show.html.erb
          format.json { render json: @stock }
      end

  end


end
