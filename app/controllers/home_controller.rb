class HomeController < ApplicationController
  def index
  end

  def history
  end

  def log
    @log = Log.new
  end
end
