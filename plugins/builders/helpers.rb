class Builders::Helpers < SiteBuilder

  def build
    helper :add_two_nums do |num_1, num_2|
      num_1 + num_2
    end
  end
end


