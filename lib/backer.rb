class Backer

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        backers = ProjectBacker.all.select do |p|
            p.backer == self
            end
            backers.map do |p|
                p.project
        end
    end

end
