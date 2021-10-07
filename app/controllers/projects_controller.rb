class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
   
      # @Project = Project.create!(params.require(:project).permit(:title,:description,:skills_descritions,:maximum_Value_hour,:demand,:deadline))
      
      
      @Project = Project.create!(params.require(:project).permit(:title,:description,:skills_descritions,:maximum_Value_hour,:demand.to_s.to_i,:deadline))
      # if @Project.save 
      #   render :new
      #   # redirect_to @property
      # else
      #   # render :new ==> renderisa a tela new, e não redireciona
      #   render :new
      #   # redirect_to new_property_path
      # end  
  end
  
 
  
end
