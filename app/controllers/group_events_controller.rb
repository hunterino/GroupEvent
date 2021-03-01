class GroupEventsController < ApplicationController
    before_action :set_group_event, only: [:show, :update, :destroy]
    before_action :validate_record, only: [:create,:update]

    # GET /group_events
    def index
        @group_events = GroupEvent.where("deleted = false")
        json_response(@group_events)
    end
    
    # POST /group_events
    def create
        @group_event = GroupEvent.create!(group_event_params)
        json_response(@group_event, :created)
    end
    
    # GET /group_events/:id
    def show
        json_response(@group_event)
    end
    
    # PUT /group_events/:id
    def update
        @group_event.update(group_event_params)
        head :no_content
    end
    
    # DELETE /group_events/:id
    def destroy
        @group_event.update(deleted:true)
        head :no_content
    end

    # DELETE /group_events/
    def destroy
        @group_events = GroupEvent.where("deleted = true")
        head :no_content
    end
  

  private

    def group_event_params
        # whitelist params
        params.permit(:title, :description, :location, :begins, :duration, :ends, :published, :deleted)
    end
    
    def set_group_event
        @group_event = GroupEvent.find(params[:id])
    end

    def validate_record
      if @group_event.published
        valid = @group_event.title != nil && @group_event.description != nil && @group_event.location != nil && @group_event.begins != nil && @group_event.ends != nil
      else
        valid = true
      end
    end

end
