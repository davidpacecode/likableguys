module RacesHelper
  def get_best_time_date (course, distance, stroke, final_time)
    Races.join(:swim_meet).select("final_time").where("course = ? and distance = ? and stroke = ? and final_time = ?", course, distance, stroke, final_time)
  end
end
