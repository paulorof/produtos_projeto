class MapasController < ApplicationController
  
  before_filter :login_required, :only => [ :edit, :update, :new, :create ]
  
  # GET /mapas
  # GET /mapas.xml
  def index
    @mapas = Mapa.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mapas }
    end
  end

  # GET /mapas/1
  # GET /mapas/1.xml
  def show
    @mapa = Mapa.find(params[:id])
    
    #-----Google Maps -------#
    
    @map = GMap.new("map_div_id")
    @map.control_init(:large_map => true, :map_type => true)
    @map.center_zoom_init([@mapa.latitude,@mapa.longitude],14)
    marker = GMarker.new([@mapa.latitude,@mapa.longitude],:title => @mapa.nome, :info_window => @mapa.nome)
    @map.overlay_init(marker)
    
    #-----Google Maps -------#

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mapa }
    end
  end

  # GET /mapas/new
  # GET /mapas/new.xml
  def new
    @mapa = Mapa.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mapa }
    end
  end

  # GET /mapas/1/edit
  def edit
    @mapa = Mapa.find(params[:id])
  end

  # POST /mapas
  # POST /mapas.xml
  def create
    @mapa = Mapa.new(params[:mapa])

    respond_to do |format|
      if @mapa.save
        flash[:notice] = 'Mapa was successfully created.'
        format.html { redirect_to(@mapa) }
        format.xml  { render :xml => @mapa, :status => :created, :location => @mapa }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mapa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mapas/1
  # PUT /mapas/1.xml
  def update
    @mapa = Mapa.find(params[:id])

    respond_to do |format|
      if @mapa.update_attributes(params[:mapa])
        flash[:notice] = 'Mapa was successfully updated.'
        format.html { redirect_to(@mapa) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mapa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mapas/1
  # DELETE /mapas/1.xml
  def destroy
    @mapa = Mapa.find(params[:id])
    @mapa.destroy

    respond_to do |format|
      format.html { redirect_to(mapas_url) }
      format.xml  { head :ok }
    end
  end
end
