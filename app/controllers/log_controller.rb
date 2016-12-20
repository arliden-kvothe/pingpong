class LogController < ApplicationController

  def create
    @log = Log.new(log_params)
    logger.debug "New log: #{@log.attributes.inspect}"
    if @log.save
      redirect_to :controller => 'home', :action => 'history', flash: {message: "Log created successfully"}
    else 
      redirect_to log_url(@log)
    end
  end

  private

  def log_params
    params.require(:log).permit(:user_id, :opponent_id, :date_played, :your_score, :their_score)
  end
end
