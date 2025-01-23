require "csv"
require "prawn"

class ActiveUsersController < ApplicationController
  def index
    @active_users = ActiveUser.all

    respond_to do |format|
      format.html
      format.csv { send_data generate_csv, filename: "active_users-#{Date.today}.csv" }
      format.xlsx { render xlsx: "index", filename: "active_users-#{Date.today}.xlsx" }
      format.pdf { send_data generate_pdf, filename: "active_users-#{Date.today}.pdf", type: "application/pdf" }
    end
  end

  private

  def generate_csv
    CSV.generate(headers: true) do |csv|
      csv << %w[First_Name Last_Name Status]
      @active_users.each do |user|
        csv << [user.first_name, user.last_name, user.status]
      end
    end
  end

  def generate_pdf
    Prawn::Document.new do |pdf|
      pdf.text "Active Users", size: 20, style: :bold
      pdf.move_down 10
      @active_users.each do |user|
        pdf.text "First Name: #{user.first_name}, Last Name: #{user.last_name}, Status: #{user.status}"
      end
    end.render
  end
end
