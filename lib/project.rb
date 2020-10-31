class Project 
    @@all = []
    attr_accessor :title, :backer
    def initialize(title)
        @title = title 
        Project.all << self 
    end 
    def self.all
        @@all
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def all_backers 
        ProjectBacker.all.select { |proj| proj.project == self }
    end

    def backers 
        self.all_backers.map { |proj| proj.backer } 
    end
    
    
end 
