class Textbook < ApplicationRecord

    mount_uploader :attachment, AttachmentUploader 
    validates :title, presence: true 

end
