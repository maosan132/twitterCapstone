module UsersHelper
  def assign_images(user)
    if user.photo.attached?
      image_tag user.photo
    else
      user.photo.attach(io: File.open('app/assets/images/placeholder-photo.png'),
                        filename: 'placeholder-photo.png', content_type: 'image/png')
    end
  end

  def assign_coverimage(user)
    if user.coverimage.attached?
      image_tag user.coverimage
    else
      user.coverimage.attach(io: File.open('app/assets/images/placeholder-cover.png'),
                             filename: 'placeholder-cover.png', content_type: 'image/png')
    end
  end
end
