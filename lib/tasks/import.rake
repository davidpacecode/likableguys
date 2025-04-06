# lib/tasks/import.rake
namespace :import do
  desc "Import USA Swimming motivational time standards from CSV"
  task time_standards: :environment do
    require "csv"

    csv_file = Rails.root.join("lib", "assets", "usa_swimming_motivational_standards.csv")

    puts "Importing time standards from #{csv_file}"
    count = 0

    CSV.foreach(csv_file, headers: true) do |row|
      time_standard = TimeStandard.find_or_initialize_by(
        standard_type: row["standard_type"],
        age_group: row["age_group"],
        age: row["age"],
        gender: row["gender"],
        distance: row["distance"].to_i,
        stroke: row["stroke"],
        course: row["course"]
      )

      # Set achievement times
      time_standard.b = row["b"]
      time_standard.bb = row["bb"]
      time_standard.a = row["a"]
      time_standard.aa = row["aa"]
      time_standard.aaa = row["aaa"]
      time_standard.aaaa = row["aaaa"]
      time_standard.sort_order = row["sort_order"]

      if time_standard.save
        count += 1
      else
        puts "Error importing row: #{row.inspect}"
        puts time_standard.errors.full_messages.join(", ")
      end
    end

    puts "Imported #{count} time standards successfully!"
  end
end
