class ParentController < ApplicationController
  def index
    @parents = Parent.all
  end

  def new
    @parent = Parent.new
  end

  def create
  end

  def destroy
  end
end
