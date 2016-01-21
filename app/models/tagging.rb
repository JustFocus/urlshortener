# == Schema Information
#
# Table name: taggings
#
#  id         :integer          not null, primary key
#  tag_id     :integer          not null
#  url_id     :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Tagging < ActiveRecord::Base

  belongs_to :tag_topic,
  foreign_key: :tag_id,
  primary_key: :id,
  class_name: 'TagTopic'

  belongs_to :shortened_url,
  foreign_key: :url_id,
  primary_key: :id,
  class_name: 'ShortenedUrl'
end
