module UsersHelper
    def profile_image(user)
        url = "https://secure.gravatar.com/avatar/#{user.gravatar_id}"
        image_tag(url, alt: user.name, width: 75, height: 75)
      end
end
