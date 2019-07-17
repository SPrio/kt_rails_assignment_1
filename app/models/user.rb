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

  def self.to_pdf
    Prawn::Document.new do
      User.all.each do |user|
        text "Name: #{user.name}"
        text "Email: #{user.email}"
        text "Phone Number: #{user.phone_number}"
        text "Created at: #{user.created_at}"
        text "Updated at: #{user.updated_at}"
        text "\n"
      end
    end.render
  end

end
