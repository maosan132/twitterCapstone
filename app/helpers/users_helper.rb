module UsersHelper
  def profile_photo(user, photo = true)
    if photo && user.photo.attached?
      image_tag user.photo
    elsif photo
      user.photo.attach(io: File.open('app/assets/images/placeholder-photo.png'),
                        filename: 'placeholder-photo.png', content_type: 'image/png')
    elsif user.coverimage.attached?
      image_tag user.coverimage
    else
      user.coverimage.attach(io: File.open('app/assets/images/placeholder-cover.png'),
                             filename: 'placeholder-cover.png', content_type: 'image/png')
    end
  end
end
