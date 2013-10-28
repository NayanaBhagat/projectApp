module ProjectsHelper
def all_users(projects=nil)
 (projects == nil) ? (User.all) : (project.users.map{ |j| j.id })
end


end
