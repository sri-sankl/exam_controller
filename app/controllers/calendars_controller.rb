class CalendarsController < ApplicationController
	
  
    def index
        @calendars = Calendar.all
    end
  	
    def show

         @calendar = Calendar.find(params[:id])

    end

    def new
        @calendar=Calendar.new
    end

    def create
      @calendar = Calendar.new(calendar_params)

      respond_to do |format|
      if @calendar.save
        format.html { redirect_to @calendar, notice: 'Event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @calendar }
      else
        format.html { render action: 'new' }
        format.json { render json: @calendar.errors, status: :unprocessable_entity }
      end
    end

    end

    def edit
@calendar = Calendar.find(params[:id])
    end

    def update
        @calendar = Calendar.find(params[:id])
        respond_to do |format|
            if @calendar.update(calendar_params)
                format.html { redirect_to @calendar, notice: 'Event was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: 'edit' }
                format.json { render json: @calendar.errors, status: :unprocessable_entity }
      end
    end

    end

    def destroy
        @calendar = Calendar.find(params[:id])
        @calendar.destroy
        respond_to do |format|
        format.html { redirect_to calendars_url }
        format.json { head :no_content }
    end
  end

    private
    # Use callbacks to share common setup or constraints between actions.
        def set_user
          @calendar = Calendar.find(params[:id])
        end

    # Never trust parameters from the scary internet, only allow the white list through.
        def calendar_params
          params.require(:calendar).permit(:course, :semester, :event, :from, :to)
        end
        
        def pick
           @data = params[:course]
          
        end
        def index1
        end
        def index2
        end
        def index3
            @calendars = Calendar.all
            
        end


end