
class LibrariesController < ApplicationController
  def index
  	@libraries = @librariable.library
  end

  def new
  end
end
