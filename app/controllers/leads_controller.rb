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

  def create
    @lead = Lead.create(lead_params)
    if @lead.valid?
      flash[:message] = "Lead, #{@lead.full_name}, was succesfully created!"
    else
      flash[:message] = "Error creating lead, please try again"
    end
    
    redirect_to leads_path
  end

  private
  def lead_params
    params.require(:lead).permit(:first_name, :last_name, :phone_number)
  end

end
