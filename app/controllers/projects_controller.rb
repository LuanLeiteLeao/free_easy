class ProjectsController < ApplicationController
  def show
    id = params[:id]
    @project = Project.find(id)
    render layout: "user"
  end

  def index
    @projects = Project.all

    render layout: "user"
  end

  def new
    @project = Project.new
    render layout: "user"
  end

  def create
    @project = Project.create(params.require(:project).permit(:title,:description,:skills_descritions,:maximum_value_hour,:demand,:deadline))
    
      if @project.save 
        redirect_to @project
      else
        render :new
      end  
  end
  
 
  
end
