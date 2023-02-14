class CompaniesController < ApplicationController

  # TODO:
  # def index
  # end
  def index
    # get any data in
    @companies = Company.all
    # handle business logic
    # render html file views/companies/index.html.erb
    
  end

  def show
    @company = Company.find_by({ "id" => params["id"] })
    # render html file views/companies/show
  end

end
