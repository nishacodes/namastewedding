class InviterequestsController < ApplicationController
  # GET /inviterequests
  # GET /inviterequests.json
  def index
    @inviterequests = Inviterequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inviterequests }
    end
  end

  # GET /inviterequests/1
  # GET /inviterequests/1.json
  def show
    @inviterequest = Inviterequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inviterequest }
    end
  end

  # GET /inviterequests/new
  # GET /inviterequests/new.json
  def new
    @inviterequest = Inviterequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inviterequest }
    end
  end

  # GET /inviterequests/1/edit
  def edit
    @inviterequest = Inviterequest.find(params[:id])
  end

  # POST /inviterequests
  # POST /inviterequests.json
  def create
    @inviterequest = Inviterequest.new(params[:inviterequest])

    respond_to do |format|
      if @inviterequest.save
        InviterequestMailer.registration_confirmation(@inviterequest).deliver
        format.html { redirect_to @inviterequest} #, notice: 'Inviterequest was successfully created.' }
        format.json { render json: @inviterequest, status: :created, location: @inviterequest }
      else
        format.html { render action: "new" }
        format.json { render json: @inviterequest.errors, status: :unprocessable_entity}
      end
    end
  end

  # PUT /inviterequests/1
  # PUT /inviterequests/1.json
  def update
    @inviterequest = Inviterequest.find(params[:id])

    respond_to do |format|
      if @inviterequest.update_attributes(params[:inviterequest])
        format.html { redirect_to @inviterequest, notice: 'Inviterequest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inviterequest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inviterequests/1
  # DELETE /inviterequests/1.json
  def destroy
    @inviterequest = Inviterequest.find(params[:id])
    @inviterequest.destroy

    respond_to do |format|
      format.html { redirect_to inviterequests_url }
      format.json { head :no_content }
    end
  end
end
