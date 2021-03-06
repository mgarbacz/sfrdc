class ComponentsController < ApplicationController
before_filter :authenticate_admin!
  # GET /components
  # GET /components.json
  def index
    @components = Component.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @components }
    end
  end

  # GET /components/1
  # GET /components/1.json
  def show
    @component = Component.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @component }
    end
  end

  # GET /components/new
  # GET /components/new.json
  def new
    @component = Component.new

    # Checking if we already set page via 'Add Component' buttons on pages
    if params[:page]
      @component.page = params[:page]
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @component }
    end
  end

  # GET /components/1/edit
  def edit
    @component = Component.find(params[:id])
  end

  # POST /components
  # POST /components.json
  def create
    # Simply creating a new Component, we don't want to pass attributes yet
    @component = Component.new
    
    # Picking out the dynamic attributes for the category we are creating
    category = params[:component][:category]
    @component.accessible = 
      ComponentConfig::DYNAMIC_ATTRIBUTES[category]['attributes'].keys

    # Now we want to pass the attributes, since our dynamic ones have been added
    @component.attributes = params[:component]

    respond_to do |format|
      if @component.save
        format.html { redirect_to @component, notice: 'Page content was successfully created.' }
        format.json { render json: @component, status: :created, location: @component }
      else
        format.html { render action: "new" }
        format.json { render json: @component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /components/1
  # PUT /components/1.json
  def update
    @component = Component.find(params[:id])

    # Picking out the dynamic attributes for the category we are updating 
    category = params[:component][:category]
    @component.accessible = 
      ComponentConfig::DYNAMIC_ATTRIBUTES[category]['attributes'].keys

    respond_to do |format|
      if @component.update_attributes(params[:component])
        format.html { redirect_to @component, notice: 'Page content was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /components/1
  # DELETE /components/1.json
  def destroy
    @component = Component.find(params[:id])
    @component.destroy

    respond_to do |format|
      format.html { redirect_to components_url }
      format.json { head :no_content }
    end
  end
end
