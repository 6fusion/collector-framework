# This is a sample MongoDB of a 6fusion infrastructure
class Infrastructure

  include Mongoid::Document

  field :remote_id,       type: String
  field :organization_id, type: String
  field :name,            type: String
  field :tags,            type: Array

  validates :organization_id, :name, :tags, presence: true

  # has_many   ...
  # belongs_to ...

end