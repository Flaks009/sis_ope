class HomeController < ApplicationController
  before_action :authenticate_user!

  def accept_term
    @id_forward_course = params[:id]
    render "/confirm/_form" 
  end

end
