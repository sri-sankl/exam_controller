ExamController::Application.routes.draw do
  
  get "newresults/index"
  get "newresults/new"
  get "newresults/edit"
  get "newresults/show"
  get "newresults/update"
  get "newresults/destroy"
  devise_for :users, :controllers => { :sessions => 'sessions'}
  root to: "home#home_page"
  
  resources :contacts do
    collection do
      
    end
  end
  resources :employees do
    collection do

    end
  end

  resources :courses do
    member do
      get "course_subjects"
    end
    collection do
      get "course_sems"
    end
  end

  resources :results do
    collection do
      get "result_upload"
      post "upload"
    end
  end

  resources :faculties
  resources :how_tos

  resources :students do
    collection do
      get "new_upload"
      post "upload"
    end
  end

  resources :documents do
    collection do
      get "manage_gallery"
      post "upload_gallery"
    end
    member do
      get "download"
    end
  end

  get 'auto_search/autocomplete_course_name'
  get 'auto_search/autocomplete_faculty_name'
  get 'auto_search/autocomplete_student_by_roll_no_and_name'
  get 'auto_search/autocomplete_how_to_name'
  get 'auto_search/autocomplete_document_filename'
  get 'auto_search/autocomplete_calendar_course'
  get 'auto_search/autocomplete_exam_dept'
  
  post "employees/:id" => "employees#update"
  get "org_chart" => "employees#hierarchy"

  get "notifications/new"
  get "notifications/edit"
  get "notifications/show"
  get "notifications/destroy"
 
  get "home/feedback"
  get "notifications/preview"
  get "notifications/more"
  get "home/adminhome"
  get "feedbacks/show"

 resources :notifications do
    collection do 
     
      end
    member do
      end
    end
  resources :feedbacks do
    collection do 
      end
    member do
      end
    end

  resources :welcomes

  resources :calendars do
    collection do
      
    end
  end

  resources :exams do
    collection do
      
    end
  end

  resources :seat_allotments do
    collection do
      get "new_allotment_upload"
      post "upload"
    end
  end

  resources :hall_of_fames


end
