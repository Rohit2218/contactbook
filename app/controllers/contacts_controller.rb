class ContactsController < ApplicationController
    def index
        @contacts = Contact.all
    end
    def new
        @contact = Contact.new
    end
    def create
        @contact = Contact.new(contact_params)
        # if @contact.valid?
        #     @contact.save
        #     redirect_to contacts_path
        # else
        #     render 'new'
        # end
        if @contact.validate
            @contact.save
            redirect_to contacts_path
        else
            if @contact.errors.any? 
                puts "inside"
                @error = @contact.errors[:first_name]
                redirect_to new_contact_path(@error)
            end
        end
          
        # @contact.error
    end
    def edit
        @contact = Contact.find(params[:id])
    end
    def update
        @contact = Contact.find(params[:id])
        @contact.update(contact_params)
        redirect_to contacts_path
    end

    def destroy     
        puts "Inside destroy"  
        @contact = Contact.find(params[:id])
        @contact.destroy
        redirect_to contacts_path
    end    
    
    
    private
        def contact_params
            params.require(:contact).permit(:title,:first_name,:last_name,:address,:phone,:user_name)
        end
end
