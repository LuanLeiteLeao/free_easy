class ApplicationController < ActionController::Base
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404
    # Render 404 page when record not found
      def render_404      
        render :file => "#{Rails.root}/public/404.html",  layout: false, status: :not_found
      end
  end