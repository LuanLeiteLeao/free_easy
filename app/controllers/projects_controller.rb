class ProjectsController < ApplicationController
  def show
    id = params[:id]
    @project = Project.find(id)
    render json: {'oi':'oi'}
  end

  def index
    @project = Project.all

    render layout: "user"
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(params.require(:project).permit(:title,:description,:skills_descritions,:maximum_Value_hour,:demand,:deadline))
    
      if @project.save 
        redirect_to new_project_path
      else
        render :new
      end  
  end
  
 
  
end
