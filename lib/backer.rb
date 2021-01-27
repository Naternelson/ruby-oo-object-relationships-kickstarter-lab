class Backer
    attr_reader :name
    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        prod_backs.collect {|pb| pb.project}
    end

    def prod_backs
        ProjectBacker.all.select {|prod_back| prod_back.backer == self}
    end
end