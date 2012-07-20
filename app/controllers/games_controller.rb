class GamesController < ApplicationController
  def login
    s = request.session_options[:id]
    name = params[:name]
    p = Player.new({:name => name, :spy => false, :session => s})
    p.save

    redirect_to :action => :show
  end
  
  def logout
    s = request.session_options[:id]
    puts s
    Player.where(:session => s).each {|p| p.delete}
    redirect_to :action => :show
  end

  def show
    @players = Player.all
  end
end
