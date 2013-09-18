module Twitter

  class Tweet
    attr_accessor :tweets

    def initialize
      @tweets = ["Proin vehicula ut libero eget mattis. Phasellus ut elit accumsan ipsum posuere.",
                 "Fusce tincidunt tortor sagittis ante elementum porttitor. Etiam vitae adipiscing elit. Praesent eleifend sodales sapien, quis placerat amet.", 
                 "In id leo nec augue congue metus."
                ]
    end

  end
end