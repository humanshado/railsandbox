class PopulationsController < ApplicationController

  def index
    @populations = Population.search(params[:search]).paginate(:page => params[:page], :per_page => 10)
  end

  # def upload
  #   Population.upload(params[:file])
  #   redirect_to root_path, notice: "All World Population data added to database"
  # end

  def upload
    UploadPopulationJob.perform_now(params[:file])
    redirect_to root_path, notice: "All World Population data added to database"
  end

  def destroy_all
    Population.destroy_all
    flash[:notice] = "All World Population data deleted from database."
    redirect_to populations_path
  end

end
