class RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
     authenticated_root_path # Or :prefix_to_your_route
   end

   def after_sign_in_path_for(resource)
     # After you enter login info and click submit, I want you to be sent to the registrations#show page
     authenticated_root_path
   end

end
