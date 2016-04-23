class Connection < ActiveRecord::Base
  belongs_to :skill
  has_many :connections_as_sender, foreign_key: "sender_id", class_name: "Connection"
  has_many :connections_as_receiver, foreign_key: "receiver_id", class_name: "Connection"

  before_validation :add_default_status

  private
      def add_default_status
          self.status = "pending" if self.status.nil?
      end
end
