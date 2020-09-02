class TitleValidator < ActiveModel::Validator 

    def validate(record)
        unless record.title && record.title.match?(/Won't Believe|Secret|Top [number]|Guess/)
            record.errors[:title] << "This is not click-baity enough!"
        end
    end
    
end