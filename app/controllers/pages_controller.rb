require 'open3'

class PagesController < ApplicationController
  def click
  end

  def do_click
	rtn = `ruby weather.rb`
	
    puts rtn

  	render json: {output: rtn}
  end

  def contact
  end
end