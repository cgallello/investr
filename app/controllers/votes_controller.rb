class VotesController < ApplicationController
  
  def create
    @vote = Vote.new(params[:vote])

    respond_to do |format|
      if @vote.save
        format.html do
          if params[:commit] == 'Create Vote'
            redirect_to(@vote, :notice => 'Vote was successfully created.')
          else
            @project = Project.find(params[:vote][:business_id])
            redirect_to(@business, :notice => 'Got your vote.')
          end
        end
        format.xml  { render :xml => @vote, :status => :created, :location => @vote }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @vote.errors, :status => :unprocessable_entity }
      end
    end
  end
  
end
