class RatingMark
  include Mongoid::Document
  include Mongoid::Timestamps::Created

  embedded_in :rateable, :polymorphic => true
  field :mark, :type => Integer
  field :rater_class, :type => String
  field :rater_id, :type => Mongoid::VERSION.start_with?('3') ? Moped::BSON::ObjectId : BSON::ObjectId
  field :weight, :type => Integer, :default => 1
end
