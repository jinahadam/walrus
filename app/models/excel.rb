class Excel < ActiveRecord::Base
  require 'parse_rating.rb'
  mount_uploader :file_name, RatingXlsUploader
  
  after_save :parse

  private
    def parse
      ParseRating.new "#{Rails.root}/public#{self.file_name_url}"    
    end
end
