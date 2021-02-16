class LeadsController < ApplicationController

  def index
    @leads = Lead.all
  end

  def new
    @lead = Lead.new
    respond_to do |format|
      format.html
      format.js
    end
  end
end
