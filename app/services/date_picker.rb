class DatePicker < ApplicationService
    def initialize
        @today = Time.now
    end
    
    def call
        return @today
    end
end