class RatingXl < ActiveRecord::Base
  mount_uploader :file_name, RatingFileUploader
end
