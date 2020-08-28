class Follower
    attr_reader :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def oaths
        BloodOath.all.select {|oath| oath.follower == self}
    end

    def cults
        self.oaths.map {|oath| oath.cult}
    end

    def join_cult(cult)
        BloodOath.new("date", cult, self)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select {|follower| follower.age == age}
    end
end