# lib/tasks/import.rake
namespace :import do
   #   desc "Import USA Swimming motivational time standards from CSV"
   #   task time_standards: :environment do
   #     require "csv"

   #     csv_file = Rails.root.join("lib", "assets", "usa_swimming_motivational_standards.csv")

   #    puts "Importing time standards from #{csv_file}"
   #     count = 0

   #     CSV.foreach(csv_file, headers: true) do |row|
   #       time_standard = TimeStandard.find_or_initialize_by(
   #         standard_type: row["standard_type"],
   #         age_group: row["age_group"],
   #         age: row["age"],
   #         gender: row["gender"],
   #         distance: row["distance"].to_i,
   #         stroke: row["stroke"],
   #          course: row["course"]
   #       )

   #       # Set achievement times
   #       time_standard.b = row["b"]
   #       time_standard.bb = row["bb"]
   #       time_standard.a = row["a"]
   #       time_standard.aa = row["aa"]
   #       time_standard.aaa = row["aaa"]
   #       time_standard.aaaa = row["aaaa"]
   #       time_standard.sort_order = row["sort_order"]

   #       if time_standard.save
   #         count += 1
   #       else
   #         puts "Error importing row: #{row.inspect}"
   #         puts time_standard.errors.full_messages.join(", ")
   #       end
   #     end

   #    puts "Imported #{count} time standards successfully!"
   #  end

   #   desc "Import tags_time_cuts_lcm from CSV"
   #   task tags_time_cuts: :environment do
   #     require "csv"

   #     csv_file = Rails.root.join("lib", "assets", "tags_time_cuts_lcm.csv")

   #     puts "Importing time standards from #{csv_file}"
   #     count = 0

   #     CSV.foreach(csv_file, headers: true) do |row|
   #       tags_time_cut = TagsTimeCut.find_or_initialize_by(
   #         age_group: row["age_group"],
   #         gender: row["gender"],
   #         distance: row["distance"].to_i,
   #         stroke: row["stroke"],
   #         course: row["course"],
   #         tags_time: row["tags_time"],
   #         bonus_time: row["bonus_time"],
   #         sort_order: row["sort_order"]
   #       )

   #       if tags_time_cut.save
   #         count += 1
   #       else
   #         puts "Error importing row: #{row.inspect}"
   #         puts tags_time_cut.errors.full_messages.join(", ")
   #       end
   #     end

   #    puts "Imported #{count} tags time cuts successfully!"
   #   end
   #
   desc "Import tags_time_cuts_scy from CSV"
   task tags_time_cuts: :environment do
     require "csv"

     csv_file = Rails.root.join("lib", "assets", "tags_time_cuts_scy.csv")

     puts "Importing time standards from #{csv_file}"
     count = 0

     CSV.foreach(csv_file, headers: true) do |row|
       tags_time_cut = TagsTimeCut.find_or_initialize_by(
         age_group: row["age_group"],
         gender: row["gender"],
         distance: row["distance"].to_i,
         stroke: row["stroke"],
         course: row["course"],
         tags_time: row["tags_time"],
         bonus_time: row["bonus_time"],
         sort_order: row["sort_order"]
       )

       if tags_time_cut.save
         count += 1
       else
         puts "Error importing row: #{row.inspect}"
         puts tags_time_cut.errors.full_messages.join(", ")
       end
     end

     puts "Imported #{count} tags time cuts successfully!"
   end
end
