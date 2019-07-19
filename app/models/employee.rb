class Employee < ApplicationRecord
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
