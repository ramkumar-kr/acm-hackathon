class SessionsController < ApplicationController
    def create
        @user = Organizer.find_by_id(auth_hash.id)
        Rails.logger.log(@user)
        redirect_to '/'
      end
    
      protected
    
      def auth_hash
        request.env['omniauth.auth']
      end

    def login
        Rails.logger.debug("Hello #{params}")
    end
end
