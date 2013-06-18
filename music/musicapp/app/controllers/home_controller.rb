class HomeController < ApplicationController
  def index
	session[:link_list] ||= []

        if params[:add] 
		if  params[:add] != ""
                	session[:link_list].append(params[:add])
			redirect_to root_path
		end
		

        elsif params[:submit]
		session[:link_list].delete_at(params[:submit].to_i)
		redirect_to root_path
	end
  end
  
end
