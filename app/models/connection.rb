class Connection < ActiveRecord::Base
  belongs_to :skill
  belongs_to :user
  before_validation :add_default_status
  acts_as_commentable

  def accept!
      self.status = "Accepted"
      self.save
  end

  def reject!
      self.status = "Declined"
      self.save
  end

  def cancel!
      self.destroy
  end

  def complete!
    self.status = "Complete"
    self.save
  end

  private
      def add_default_status
          self.status = "Pending" if self.status.nil?
      end
end
