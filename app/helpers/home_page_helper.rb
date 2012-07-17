module HomePageHelper
  def drop_down(twitter_list)
    array = []
    twitter_list.each_with_index do |v, i=1|
      array << [v,i]
    end
    array
  end
end
