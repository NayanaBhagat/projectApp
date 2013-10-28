require 'spec_helper'

describe ProjectsController do
	  include Devise::TestHelpers
	before :each do
  	@user = User.create!(:email => 'abc@gmail.com', :password => 'password', :password_confirmation => 'password', :fname => 'example',:lname => 'example1', :dob => '1990-04-20' ,:empNo => '12345', :gender => 'female',:hobbies => 'Reading',:address => 'Mumbai',:admin => 'true')
  	sign_in @user
end


def valid_attributes
 {
    :name=>'project1',:start_date=>'2012-03-30',:end_date=>'2014-10-22',:user_name=>'example'
  }
end

describe "GET index" do
    it "input: nothing ; output: all projects" do
 	@project=Project.create! valid_attributes
  	get "index"
    response.should render_template(:action => 'index')
  end
end

  describe "GET new project" do
   it "input: project details ; output:project object" do
     get "new"
     assigns(:project).should be_a_new(Project)
   end
end

describe "GET show project" do
   it "input: project_id ; render: show page" do
    @project=Project.create! valid_attributes
    get "show",:id => @project.id
    response.should render_template(:action => 'show')
  end
end

describe "GET edit" do
  it "Render edit page" do
    @project=Project.create! valid_attributes
    get :edit,:id => @project.id
    assigns(:project).should eq(@project)
  end
end

end