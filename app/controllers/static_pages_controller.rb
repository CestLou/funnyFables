class StaticPagesController < ApplicationController
  def home
  	@fables = Fable.all
  end
end
