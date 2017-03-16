class PhotoShout < ActiveRecord::Base
	has_attached_file :image, styles: {
		# this enables style requirements shout will now take the largest side and set equal to 200x 200.
		shout: "200x200>"
	}
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
