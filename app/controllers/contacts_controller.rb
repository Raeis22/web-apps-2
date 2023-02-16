class ContactsController < ApplicationController

  def show
    @contact = Contact.find_by({ "id" => params["id"] })
    @company = Company.find_by({ "id" => @contact["company_id"] })
  end

  def new
    @contact = Contact.new
    @contact.company_id = params["company_id"]
  end

  def create
    @contact = Contact.new(params["contacts"])
    @contact.save
    redirect_to "/companies/#{@contact.company_id}"
  end

end
