class ChurchinfosController < ApplicationController
  # GET /churchinfos
  # GET /churchinfos.json
  def index
    @churchinfos = Churchinfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @churchinfos }
    end
  end

  # GET /churchinfos/1
  # GET /churchinfos/1.json
  def show
    @churchinfo = Churchinfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @churchinfo }
    end
  end

  # GET /churchinfos/new
  # GET /churchinfos/new.json
  def new
    @churchinfo = Churchinfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @churchinfo }
    end
  end

  # GET /churchinfos/1/edit
  def edit
    @churchinfo = Churchinfo.find(params[:id])
  end

  # POST /churchinfos
  # POST /churchinfos.json
  def create
    @churchinfo = Churchinfo.new(params[:churchinfo])

    respond_to do |format|
      if @churchinfo.save
        format.html { redirect_to @churchinfo, notice: 'Churchinfo was successfully created.' }
        format.json { render json: @churchinfo, status: :created, location: @churchinfo }
      else
        format.html { render action: "new" }
        format.json { render json: @churchinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /churchinfos/1
  # PUT /churchinfos/1.json
  def update
    @churchinfo = Churchinfo.find(params[:id])

    respond_to do |format|
      if @churchinfo.update_attributes(params[:churchinfo])
        format.html { redirect_to @churchinfo, notice: 'Churchinfo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @churchinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /churchinfos/1
  # DELETE /churchinfos/1.json
  def destroy
    @churchinfo = Churchinfo.find(params[:id])
    @churchinfo.destroy

    respond_to do |format|
      format.html { redirect_to churchinfos_url }
      format.json { head :ok }
    end
  end
end
