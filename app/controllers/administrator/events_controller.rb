module Administrator
  class EventsController < Administrator::BaseController
    include Devise::Controllers::Helpers
    before_action :set_classification, only: %i[ show edit update destroy ]
    before_action :set_current_admin

    # GET /events or /events.json
    def index
      @events = Event.all
    end

    # GET /events/1 or /events/1.json
    def show
    end

    # GET /events/new
    def new
      @event = Event.new
    end

    # GET /events/1/edit
    def edit
      if params[:event][:admin_id] == nil
        @event.admin_id = Current.admin.username
      end
    end

    # POST /events or /events.json
    def create
      @event = Event.new(event_params)

      if params[:event][:isVirtual] == "true"
        @event.street = "Virtual"
        @event.city = "Online"
        @event.zipcode = "00000" # or any other placeholder value
      end

        # Split the combined date and time into separate columns since we are using datetime_field in the form
      event_datetime = DateTime.parse(params[:event][:eventDate])
      @event.meetingLink = nil unless params[:event][:isVirtual] == "true"
      @event.eventDate = event_datetime.to_date
      @event.eventTime = event_datetime.to_time
      @event.user_id = nil
      @event.admin_id = Current.admin.username


      respond_to do |format|
        if @event.save
          format.html { redirect_to administrator_events_path, notice: "Event was successfully created." }
          format.json { render :show, status: :created, location: @event }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /events/1 or /events/1.json
    def update
      respond_to do |format|
        if @event.update(event_params)
          format.html { redirect_to @event, notice: "Event was successfully updated." }
          format.json { render :show, status: :ok, location: @event }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /events/1 or /events/1.json
    def destroy
      @event.destroy!

      respond_to do |format|
        format.html { redirect_to events_path, status: :see_other, notice: "Event was successfully deleted." }
        format.json { head :no_content }
      end
    end

    private

      def logged_in?
        !!session[:user_username] || !!session[:username]
      end

      # Use callbacks to share common setup or constraints between actions.
      def set_event
        @event = Event.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def event_params
        params.require(:event).permit(:title, :eventDescription, :eventDate, :eventTime, :street, :city, :zipcode, :isVirtual, :meetingLink)
      end

      def authorize_user
        unless (current_user == @event.user) || admin_logged_in?
          redirect_to events_path, alert: "You are not authorized to perform this action."
        end
      end
  end
end