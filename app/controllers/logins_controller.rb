class LoginsController < ApplicationController
    
    def home
        @text = 'Fill out this form - enter your github login'

    end

    # def show
      
    # end

    def show

        user = Github::User.find(params[:githublogin][:name])

        if user.nil?
            redirect_to root_path, :alert => 'Data not found'
        else
            @user_name = user.name
            @user_repos = user.repositories.to_h['edges'].map{ |e| e['node']['name'] }
        end
        
    end

end
