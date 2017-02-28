class HomeController < ApplicationController
  def index
    #check if we are running in mobile mode
    if(params[:mobile])
      @mobile_mode = true;
    end

    #Check if any questions where found
    if(ActiveQuestion.count == 0)
      @no_questions = true
    else
      #Get the active questions from the database.
      @questions = ActiveQuestion.all()
    end
  end

  def ask
    #Check if the request has a new question posted to it.
    if(params[:question])
        #Add the question to the database.
        ActiveQuestion.create(question: params[:question])

        #Redirect the user back to the homepage
        redirect_to '/'
    end
  end
end
