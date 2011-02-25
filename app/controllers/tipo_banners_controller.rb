class TipoBannersController < ApplicationController
  
  before_filter :login_required, :only => [ :edit, :update, :new, :create ]
  
  # GET /tipo_banners
  # GET /tipo_banners.xml
  def index
    @tipo_banners = TipoBanner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_banners }
    end
  end

  # GET /tipo_banners/1
  # GET /tipo_banners/1.xml
  def show
    @tipo_banner = TipoBanner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_banner }
    end
  end

  # GET /tipo_banners/new
  # GET /tipo_banners/new.xml
  def new
    @tipo_banner = TipoBanner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_banner }
    end
  end

  # GET /tipo_banners/1/edit
  def edit
    @tipo_banner = TipoBanner.find(params[:id])
  end

  # POST /tipo_banners
  # POST /tipo_banners.xml
  def create
    @tipo_banner = TipoBanner.new(params[:tipo_banner])

    respond_to do |format|
      if @tipo_banner.save
        flash[:notice] = 'TipoBanner was successfully created.'
        format.html { redirect_to(@tipo_banner) }
        format.xml  { render :xml => @tipo_banner, :status => :created, :location => @tipo_banner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_banner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_banners/1
  # PUT /tipo_banners/1.xml
  def update
    @tipo_banner = TipoBanner.find(params[:id])

    respond_to do |format|
      if @tipo_banner.update_attributes(params[:tipo_banner])
        flash[:notice] = 'TipoBanner was successfully updated.'
        format.html { redirect_to(@tipo_banner) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_banner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_banners/1
  # DELETE /tipo_banners/1.xml
  def destroy
    @tipo_banner = TipoBanner.find(params[:id])
    @tipo_banner.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_banners_url) }
      format.xml  { head :ok }
    end
  end
end
