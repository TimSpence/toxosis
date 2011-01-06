class SpillsController < ApplicationController
  # GET /spills
  # GET /spills.xml
  def index
    @spills = Spill.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @spills }
    end
  end

  # GET /spills/1
  # GET /spills/1.xml
  def show
    @spill = Spill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @spill }
    end
  end

  # GET /spills/new
  # GET /spills/new.xml
  def new
    @spill = Spill.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @spill }
    end
  end

  # GET /spills/1/edit
  def edit
    @spill = Spill.find(params[:id])
  end

  # POST /spills
  # POST /spills.xml
  def create
    @spill = Spill.new(params[:spill])

    respond_to do |format|
      if @spill.save
        format.html { redirect_to(@spill, :notice => 'Spill was successfully created.') }
        format.xml  { render :xml => @spill, :status => :created, :location => @spill }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @spill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /spills/1
  # PUT /spills/1.xml
  def update
    @spill = Spill.find(params[:id])

    respond_to do |format|
      if @spill.update_attributes(params[:spill])
        format.html { redirect_to(@spill, :notice => 'Spill was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @spill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /spills/1
  # DELETE /spills/1.xml
  def destroy
    @spill = Spill.find(params[:id])
    @spill.destroy

    respond_to do |format|
      format.html { redirect_to(spills_url) }
      format.xml  { head :ok }
    end
  end
end
