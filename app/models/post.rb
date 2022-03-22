class Post < ApplicationRecord
    mount_uploader :image, ImageUploader

    belongs_to :account # , class_name: "account", foreign_key: "account_id"

    beofre_create :set_active

    scope :active, -> { where(:active => true)}
    # Ex:- scope :active, -> {where(:active => true)}

    def set_active
        self.active =  true
    end
end
