module ItemsHelper
    def format_found_on(item)
        # MAKE METHODS NIL SAFE (this will only run if the found_on attribute is not nil)
        if item.found_on.present? && item.found_on.class == Date 
            # only runs if date is in a valid format (Date class) for ^^^ strftime!
            item.found_on.strftime("%-m.%-d.%-y")
            # %D is the same as %m/%d/%y 
        end
    end

    def format_updated_at(item)
        #Already nil safe because "updated at" always exists for objects.
        item.updated_at.strftime("%B %Y")
    end
end
