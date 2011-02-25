class UsuariosController < ApplicationController
  
  before_filter :login_required, :only => [ :show, :edit, :update, :new, :create ]
  
  def show
    @usuario = Usuario.find(params[:id])
  end

  # render new.rhtml
  def new
    @usuario = Usuario.new
  end
 
  def create
    logout_keeping_session!
    @usuario = Usuario.new(params[:usuario])
    success = @usuario && @usuario.save
    if success && @usuario.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      self.current_usuario = @usuario # !! now logged in
      redirect_back_or_default('/')
      flash[:notice] = "Cadastro efetuado com sucesso!"
    else
      flash[:error]  = "Erro no cadastro, verifique se todos os campos estão digitados corretamente."
      render :action => 'new'
    end
  end
  
  def edit
      @usuario = Usuario.find(params[:id])
  end
  
  def update
    @usuario = Usuario.find(params[:id])
    
    respond_to do |format|
      if @usuario.update_attributes(params[:usuario])
        flash[:notice] = 'Usuario atualizado com sucesso.'
        format.html { redirect_to(@usuario) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @usuario.errors, :status => :unprocessable_entity }
      end
    end

  end
  
  
end
