module SwitchbloxEvents
  class EventsController < ApplicationController
    before_action :set_event, only: [ :edit, :update, :destroy ]

    def index
      @events = Event.all
    end

    def new
      @event = Event.new
    end

    def create
      @event = Event.new(event_params)
      if @event.save
        redirect_to action: :index
      else
        render :new
      end
    end

    def edit
    end

    def update
      @event.update_attributes(params[:event])
    end

    def destroy
      @event.destroy
      redirect_to action: :index
    end

    private

      def set_event
        @event = Event.find(params[:id])
      end

      def event_params
        params.require(:event).permit(:name)
      end

  end
end