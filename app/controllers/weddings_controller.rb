class WeddingsController < ApplicationController
	before_filter :authenticate_user!, except: [:index]
  include Wicked::Wizard
  steps :weddingdetails, :eventdetails

  # GET /weddings
  # GET /weddings.json
  def index
    @weddings = Wedding.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weddings }
  end

  # GET /weddings/1
  # GET /weddings/1.json
  def show
    @wedding = Wedding.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wedding }
    end
  end

  # GET /weddings/new
  # GET /weddings/new.json
  def new
    @wedding = current_user.weddings.new 

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wedding }
    end
  end

  # GET /weddings/1/edit
  def edit
    @wedding = current_user.weddings.find(params[:id])
  end

  # POST /weddings
  # POST /weddings.json
  def create
    @wedding = current_user.weddings.new(params[:wedding])
    

    respond_to do |format|
      if @wedding.save
        
        format.html { redirect_to wedding_steps_path(:id => "eventdetails", :wedding_id => @wedding.id) }
        format.json { render json: @wedding, status: :created, location: @wedding }
      else
        format.html { render action: "new" }
        format.json { render json: @wedding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weddings/1
  # PUT /weddings/1.json
  def update
    @wedding = current_user.weddings.find(params[:id])

    respond_to do |format|
      if @wedding.update_attributes(params[:wedding])
        format.html { redirect_to @wedding, notice: 'Your wedding page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wedding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weddings/1
  # DELETE /weddings/1.json
  def destroy
    @wedding = current_user.weddings.find(params[:id])
    @wedding.destroy

    respond_to do |format|
      format.html { redirect_to weddings_url }
      format.json { head :no_content }
    end
  end
end

end
