class User < ApplicationRecord

  def self.to_csv
    CSV.generate do |csv|
      #%w(id name email phone_number created_at updated_at)
      columns = column_names
      puts self.class
      csv << columns.map(&:humanize)
      all.each do |user|
        csv << user.attributes.values_at(*columns)
      end
    end
  end



end
