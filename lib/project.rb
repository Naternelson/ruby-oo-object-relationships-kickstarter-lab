class Project
    attr_reader :title
    def initialize(title)
        @title = title 
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        prod_backs.collect {|pb|pb.backer}
    end
    def prod_backs
        ProjectBacker.all.select {|prod_back| prod_back.project == self}
    end
end