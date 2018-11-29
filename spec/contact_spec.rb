require('rspec')
require('contact')


  describe(Contact) do
    describe('#initialize') do
      it("creates a new contact.") do
        new_contact = Contact.new({first_name: "jared", last_name: "reando", job_title: "penniless entrepeneur", company: "bedside industries", contact_type: "mobile(home)"})
        expect(new_contact.last_name).to(eq("reando"))
      end
    end

    describe('#full_name') do
      it("returns full name of contact.") do
        new_contact = Contact.new({first_name: "jared", last_name: "reando", job_title: "penniless entrepeneur", company: "bedside industries", contact_type: "mobile(home)"})
        expect(new_contact.full_name()).to(eq("jared reando"))
      end
    end

  end
