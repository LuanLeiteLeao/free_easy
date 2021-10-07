class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    def create
      @Project = Project.create!(params.require(:property).permit(:title,:description,:skills_descritions,:maximum_Value_hour,:demand,:deadline))
      if @Project.save 
        render :new
        # redirect_to @property
      else
        # render :new ==> renderisa a tela new, e não redireciona
        render :new
        # redirect_to new_property_path
      end 
    end 
  
  end
  
 
  
end
