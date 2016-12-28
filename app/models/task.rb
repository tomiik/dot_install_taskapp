class Task < ActiveRecord::Base
  belongs_to :project
  validates :title,
  presence: { message: "入力してください"},
  length: { minimum: 3, message: "短すぎます" }

  scope :unfinished, -> { where(done: false) }
end
