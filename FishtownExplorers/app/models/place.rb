class Place < ApplicationRecord
	has_attached_file :avatar, :styles =>
        { :medium => "300x300>", :thumb => "100x100>" },
        :default_url => "/images/:style/missing.png",
        :storage => :s3, :s3_region => "us-east-1",
        :s3_credentials => {
            :bucket => ENV["BUCKET_NAME"],
            :access_key_id => ENV["ACCESS_KEY_ID"],
            :secret_access_key => ENV["SECRET_ACCESS_KEY"]
          }
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
		
	 	has_many :itineraries
		has_many :visits
		has_many :itineraries, through: :visits
end
