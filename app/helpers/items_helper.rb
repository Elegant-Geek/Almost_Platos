module ItemsHelper
    def format_found_on(item)
        # MAKE METHODS NIL SAFE (this will only run if the found_on attribute is not nil)
        if item.found_on.present? 
            # only runs if date is in a valid format (Date class) for ^^^ strftime!
            item.found_on.strftime("%-m.%-d.%-y")
            # %D is the same as %m/%d/%y 
        end
    end

    def format_updated_at(item)
        #Already nil safe because "updated at" always exists for objects.
        #(currently inactive, replaced with another helper method inside the view template)
        item.updated_at.strftime("%B %e at %I:%M %p") 
    end

    def nav_link_to(text, url)
        if current_page?(url)
          link_to(text, url, class: "active")
        else
          link_to(text, url)
        end
      end

end
