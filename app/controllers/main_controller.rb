class MainController < ApplicationController
    def home
        @tasklists = TaskList.all.to_a
        @num_tasklists = @tasklists.length
        @tasks = Task.all
        @num_tasks = @tasks.length
        render "home.html.erb"
    end
    def list
        @id = params[:tlid].to_i
        @tasklist = TaskList.find_by(id:@id)
        @tltitle = @tasklist.title
        render "list.html.erb"
    end
end
