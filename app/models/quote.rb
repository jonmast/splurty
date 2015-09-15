class Quote < ActiveRecord::Base
  validates :saying, presence: true, length: { maximum: 140, minimum: 3 }
  validates :author, presence: true, length: { maximum: 50, minimum: 3 }

  def unique_tag
    "#{author.split.map(&:first).join}##{id}"
  end
end
