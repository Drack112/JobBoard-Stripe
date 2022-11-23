# frozen_string_literal: true

class Job < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  JOB_TYPES = ["Full Time", "Part Time", "Contract", "Freelancer"]

end
