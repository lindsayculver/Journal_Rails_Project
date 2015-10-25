class User < ActiveRecord::Base
  has_many :entries

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def has_entry_for_today?
    return true if last_entry.created_at.to_date == Time.now.to_date
  end

  private
  def last_entry
    entries.order(:created_at).last
  end
end
