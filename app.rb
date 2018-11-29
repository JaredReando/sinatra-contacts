require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contact')
require('pry')

get ('/') do

  @test_contact = ""
  @contact_list = []
  (erb :input)
end

post ('/') do
  new_contact = Contact.new(params)
  @test_contact = Contact.find_contact(new_contact.contact_id).full_name
  @contact_list = Contact.show_all_contacts
  (erb :input)
end

get ('/contact/:id') do
  @contact = Contact.find_contact(params[:id].to_i)
  @full_name = @contact.full_name
  @first_name = @contact.first_name
  @last_name = @contact.last_name
  @job_title = @contact.job_title
  @company = @contact.company
  @contact_type = @contact.contact_type
  (erb :contact)
end

post ('/contact/:id') do
  @contact = Contact.find_contact(params[:id].to_i)
  @full_name = @contact.full_name
  @first_name = @contact.first_name
  @last_name = @contact.last_name
  @job_title = @contact.job_title
  @company = @contact.company
  @contact_type = @contact.contact_type
  @contact.add_address(params)
  (erb :contact)
end
