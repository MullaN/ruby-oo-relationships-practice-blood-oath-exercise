class Cult
    attr_reader :name, :location, :founding_year, :slogan
    attr_accessor :minimum_age

    @@all = []

    def initialize(name, location, founding_year, slogan, minimum_age = 0)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age

        @@all << self
    end

    def recruit_follower(follower)
        if follower.age >= self.minimum_age
            BloodOath.new(Time.new, self, follower)
        else
            puts "Sorry #{self.name}, #{follower.name} is too young to join."
        end
    end

    def oaths
        BloodOath.all.select {|oath| oath.cult == self}
    end

    def followers
        self.oaths.map {|oath| oath.follower}.uniq
    end

    def cult_population
        self.oaths.length
    end

    def average_age
        self.followers.sum {|follower| follower.age}.to_f / self.followers.length.to_f
    end

    def my_followers_mottos
        self.followers.map {|follower| follower.life_motto}
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find {|cult| cult.name == name}
    end

    def self.find_by_location(location)
        self.all.select {|cult| cult.location == location}
    end

    def self.find_by_founding_year(year)
        self.all.select {|cult| cult.founding_year == year}
    end

    def self.least_popular
        self.all.min_by{|cult| cult.cult_population}
    end

    def self.most_common_location
        self.all.max_by{|cult| self.find_by_location(cult.location).length}.location
    end
end