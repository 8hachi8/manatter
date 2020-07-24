class Report < ApplicationRecord
  belongs_to :user
  # has_many :comments

  # def self.search(search)
  #   return Report.all unless search
  #   Report.where(['date LIKE (?) OR impression LIKE (?) OR user_id LIKE (?) OR job_id LIKE (?)', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
  # end

  # Report.
end
