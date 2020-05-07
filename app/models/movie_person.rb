# frozen_string_literal: true

class MoviePerson < ApplicationRecord
  belongs_to :person
  belongs_to :movie

  validates :role, presence: true

  scope :actors, -> { where(role: 'actor') }
  scope :last_month, -> { where('created_at >= ?', Date.today - 1.month) }
  scope :two_weeks_ago, -> { where(created_at: [Date.today - 3.weeks..Date.today - 2.weeks])}
  
  def is_actor?
    role == 'actor'
  end
end
