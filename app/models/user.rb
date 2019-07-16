require 'csv'

class User < ApplicationRecord

  def self.all_users
    User.all
  end

  def self.to_csv
    CSV.generate do |csv|
      columns = %w(id name email phone_number created_at updated_at)
      csv << columns.map(&:humanize)
      all.each do |user|
        csv << user.attributes.values_at(*columns)
      end
    end
  end

end
