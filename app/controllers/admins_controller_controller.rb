class AdminsControllerController < ApplicationController
	def create
        build_resource(sign_up_params)
        if resource.save
          redirect_to admin_editors_path
        else
          clean_up_passwords resource
          respond_with resource
        end
      end

      def new
        build_resource({})
      end
end
