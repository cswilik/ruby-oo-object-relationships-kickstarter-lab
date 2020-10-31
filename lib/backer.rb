class Backer 
    @@all = []
    attr_accessor :name, :project
    def initialize(name)
        @name = name 
        Backer.all << self
    end 
    def self.all
        @@all 
    end 
    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def all__projects
        ProjectBacker.all.select { |proj| proj.backer == self}
    end 

    def backed_projects 
        self.all__projects.map { |proj| proj.project }
    end 

        
end 