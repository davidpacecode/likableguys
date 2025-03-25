require "csv"
namespace :import do
  desc "Import USA Swimming Motivational Time Standards from CSV"
  task swim_standards: :environment do
    # Path to your CSV file
    csv_file = Rails.root.join("data", "usa_swimming_motivational_time_standards.csv")
    # Counter for tracking imported records
    counter = 0
    # Clear existing records (optional - remove if you want to keep existing records)
    UsaSwimmingTimeStandard.delete_all
    # Read and process the CSV file
    CSV.foreach(csv_file, headers: true) do |row|
      # Skip header rows that might be mixed in the data
      next if row["type"] == "type" || row["gender"] == "gender" || row["event"] == "event"

      # Create a new record
      UsaSwimmingTimeStandard.create!(
        standard_type: row["standard_type"],
        age_group: row["age_group"],
        age: row["age"],
        gender: row["gender"],
        event: row["event"],
        course: row["course"],
        b: row["b"],
        bb: row["bb"],
        a: row["a"],
        aa: row["aa"],
        aaa: row["aaa"],
        aaaa: row["aaaa"]
      )

      counter += 1

      # Print progress every 100 records
      puts "Imported #{counter} records" if counter % 100 == 0
    end

    puts "Finished importing #{counter} USA Swimming Time Standards!"
  end
end
