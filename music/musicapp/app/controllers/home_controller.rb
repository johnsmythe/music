class HomeController < ApplicationController
  def index
	session[:link_list] ||= []
	@position = 0

        if params[:add] && params[:add] != ""
		puts "adding"
                session[:link_list].append(params[:add])
		

        elsif params[:submit]
		session[:link_list].delete_at(params[:submit].to_i)
	end
  end
  
end
