module Administrator
  class AsessionController < Administrator::BaseController
    def new
      if session[:admin_username]
        Current.admin = Admin.find_by(username: session[:admin_username])
          if Current.admin
            session[:admin_username] = Current.admin.username
            redirect_to admindashboard_path
          else
            session[:admin_username] = nil
            render :new
          end
        else
          render :new
        end
    end

    def create
      @admin = Admin.find_by(username: params[:admin_username])

      respond_to do |format|
        if @admin.present? && @admin.authenticate(params[:password])      
          session[:admin_username] = @admin.username
          format.html {redirect_to admindashboard_path }
          format.json { render json: @admin.errors, status: :unprocessable_entity }
        else
          flash[:alert] = "Invalid username or password"
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @admin.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      session[:admin_username] = nil

      respond_to do |format|
        format.html { redirect_to adminaccess_path, notice: "Logged out successfully"}
        format.json { head :no_content }
      end
    end
  end
end