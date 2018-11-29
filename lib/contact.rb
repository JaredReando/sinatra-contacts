# module Record
  class Contact

    @@contact_list = []

    def self.show_all_contacts
      @@contact_list
    end

    def self.find_contact (contact_id)
      @@contact_list[contact_id]
    end

    attr_reader :first_name, :last_name, :job_title, :company, :contact_type, :contact_id

    def initialize(attributes)
      ## also @@frist_name = attributes.fetch(:first_name)
      @first_name = attributes[:first_name]
      @last_name = attributes[:last_name]
      @job_title = attributes[:job_title]
      @company = attributes[:company]
      @contact_type = attributes[:contact_type]
      @contact_id = @@contact_list.length

      @@contact_list.push(self)

    end

    def full_name
      @first_name + " " + @last_name
    end


  end


# end
