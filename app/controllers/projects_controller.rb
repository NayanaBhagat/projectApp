class ProjectsController < ApplicationController
  # GET /projects
  # GET /projects.json

  before_filter :authenticate_user!

  def index
    @project = Project.all
    @projects_user = current_user.projects
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = Project.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
     @project = Project.new(params[:project])
    @users = User.where(:id => params[:user_name])
    @project.users << @users

   

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update
    @project = Project.find(params[:id])
      @users = User.where(:id => params[:user_name])
    puts "in update"
    @project.users.destroy_all
    @project.users << @users
    
    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.'}
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end

  def display_projects
    @user = User.find(params[:id])
    @project_name = Project.where(:empNo => @user.empNo).select(:name)
    @projects= [] 
    @project_name.each  {|project| @projects << project.name}
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end
end
