class AtaController < ApplicationController
  # GET /ata
  # GET /ata.json
  def index
    @ata = Atum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ata }
    end
  end

  # GET /ata/1
  # GET /ata/1.json
  def show
    @atum = Atum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @atum }
    end
  end

  # GET /ata/new
  # GET /ata/new.json
  def new
    @atum = Atum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @atum }
    end
  end

  # GET /ata/1/edit
  def edit
    @atum = Atum.find(params[:id])
  end

  # POST /ata
  # POST /ata.json
  def create
    @atum = Atum.new(params[:atum])

    respond_to do |format|
      if @atum.save
        format.html { redirect_to @atum, notice: 'Atum was successfully created.' }
        format.json { render json: @atum, status: :created, location: @atum }
      else
        format.html { render action: "new" }
        format.json { render json: @atum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ata/1
  # PUT /ata/1.json
  def update
    @atum = Atum.find(params[:id])

    respond_to do |format|
      if @atum.update_attributes(params[:atum])
        format.html { redirect_to @atum, notice: 'Atum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @atum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ata/1
  # DELETE /ata/1.json
  def destroy
    @atum = Atum.find(params[:id])
    @atum.destroy

    respond_to do |format|
      format.html { redirect_to ata_url }
      format.json { head :no_content }
    end
  end
end
