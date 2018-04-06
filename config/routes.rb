# == Route Map
#
#                 Prefix Verb   URI Pattern                             Controller#Action
# planphyactivityrecords GET    /planphyactivityrecords(.:format)       planphyactivityrecords#index
#                        POST   /planphyactivityrecords(.:format)       planphyactivityrecords#create
#  planphyactivityrecord GET    /planphyactivityrecords/:id(.:format)   planphyactivityrecords#show
#                        PATCH  /planphyactivityrecords/:id(.:format)   planphyactivityrecords#update
#                        PUT    /planphyactivityrecords/:id(.:format)   planphyactivityrecords#update
#                        DELETE /planphyactivityrecords/:id(.:format)   planphyactivityrecords#destroy
#        dietfoodrecords GET    /dietfoodrecords(.:format)              dietfoodrecords#index
#                        POST   /dietfoodrecords(.:format)              dietfoodrecords#create
#         dietfoodrecord GET    /dietfoodrecords/:id(.:format)          dietfoodrecords#show
#                        PATCH  /dietfoodrecords/:id(.:format)          dietfoodrecords#update
#                        PUT    /dietfoodrecords/:id(.:format)          dietfoodrecords#update
#                        DELETE /dietfoodrecords/:id(.:format)          dietfoodrecords#destroy
# usertipactivityrecords GET    /usertipactivityrecords(.:format)       usertipactivityrecords#index
#                        POST   /usertipactivityrecords(.:format)       usertipactivityrecords#create
#  usertipactivityrecord GET    /usertipactivityrecords/:id(.:format)   usertipactivityrecords#show
#                        PATCH  /usertipactivityrecords/:id(.:format)   usertipactivityrecords#update
#                        PUT    /usertipactivityrecords/:id(.:format)   usertipactivityrecords#update
#                        DELETE /usertipactivityrecords/:id(.:format)   usertipactivityrecords#destroy
#     usertipdietrecords GET    /usertipdietrecords(.:format)           usertipdietrecords#index
#                        POST   /usertipdietrecords(.:format)           usertipdietrecords#create
#      usertipdietrecord GET    /usertipdietrecords/:id(.:format)       usertipdietrecords#show
#                        PATCH  /usertipdietrecords/:id(.:format)       usertipdietrecords#update
#                        PUT    /usertipdietrecords/:id(.:format)       usertipdietrecords#update
#                        DELETE /usertipdietrecords/:id(.:format)       usertipdietrecords#destroy
#       usergrouprecords GET    /usergrouprecords(.:format)             usergrouprecords#index
#                        POST   /usergrouprecords(.:format)             usergrouprecords#create
#        usergrouprecord GET    /usergrouprecords/:id(.:format)         usergrouprecords#show
#                        PATCH  /usergrouprecords/:id(.:format)         usergrouprecords#update
#                        PUT    /usergrouprecords/:id(.:format)         usergrouprecords#update
#                        DELETE /usergrouprecords/:id(.:format)         usergrouprecords#destroy
#       usereventrecords GET    /usereventrecords(.:format)             usereventrecords#index
#                        POST   /usereventrecords(.:format)             usereventrecords#create
#        usereventrecord GET    /usereventrecords/:id(.:format)         usereventrecords#show
#                        PATCH  /usereventrecords/:id(.:format)         usereventrecords#update
#                        PUT    /usereventrecords/:id(.:format)         usereventrecords#update
#                        DELETE /usereventrecords/:id(.:format)         usereventrecords#destroy
#        userplanrecords GET    /userplanrecords(.:format)              userplanrecords#index
#                        POST   /userplanrecords(.:format)              userplanrecords#create
#         userplanrecord GET    /userplanrecords/:id(.:format)          userplanrecords#show
#                        PATCH  /userplanrecords/:id(.:format)          userplanrecords#update
#                        PUT    /userplanrecords/:id(.:format)          userplanrecords#update
#                        DELETE /userplanrecords/:id(.:format)          userplanrecords#destroy
#        userdietrecords GET    /userdietrecords(.:format)              userdietrecords#index
#                        POST   /userdietrecords(.:format)              userdietrecords#create
#         userdietrecord GET    /userdietrecords/:id(.:format)          userdietrecords#show
#                        PATCH  /userdietrecords/:id(.:format)          userdietrecords#update
#                        PUT    /userdietrecords/:id(.:format)          userdietrecords#update
#                        DELETE /userdietrecords/:id(.:format)          userdietrecords#destroy
# userachievementrecords GET    /userachievementrecords(.:format)       userachievementrecords#index
#                        POST   /userachievementrecords(.:format)       userachievementrecords#create
#  userachievementrecord GET    /userachievementrecords/:id(.:format)   userachievementrecords#show
#                        PATCH  /userachievementrecords/:id(.:format)   userachievementrecords#update
#                        PUT    /userachievementrecords/:id(.:format)   userachievementrecords#update
#                        DELETE /userachievementrecords/:id(.:format)   userachievementrecords#destroy
#           achievements GET    /achievements(.:format)                 achievements#index
#                        POST   /achievements(.:format)                 achievements#create
#            achievement GET    /achievements/:id(.:format)             achievements#show
#                        PATCH  /achievements/:id(.:format)             achievements#update
#                        PUT    /achievements/:id(.:format)             achievements#update
#                        DELETE /achievements/:id(.:format)             achievements#destroy
#                  diets GET    /diets(.:format)                        diets#index
#                        POST   /diets(.:format)                        diets#create
#                   diet GET    /diets/:id(.:format)                    diets#show
#                        PATCH  /diets/:id(.:format)                    diets#update
#                        PUT    /diets/:id(.:format)                    diets#update
#                        DELETE /diets/:id(.:format)                    diets#destroy
#               diseases GET    /diseases(.:format)                     diseases#index
#                        POST   /diseases(.:format)                     diseases#create
#                disease GET    /diseases/:id(.:format)                 diseases#show
#                        PATCH  /diseases/:id(.:format)                 diseases#update
#                        PUT    /diseases/:id(.:format)                 diseases#update
#                        DELETE /diseases/:id(.:format)                 diseases#destroy
#                 events GET    /events(.:format)                       events#index
#                        POST   /events(.:format)                       events#create
#                  event GET    /events/:id(.:format)                   events#show
#                        PATCH  /events/:id(.:format)                   events#update
#                        PUT    /events/:id(.:format)                   events#update
#                        DELETE /events/:id(.:format)                   events#destroy
#                  foods GET    /foods(.:format)                        foods#index
#                        POST   /foods(.:format)                        foods#create
#                   food GET    /foods/:id(.:format)                    foods#show
#                        PATCH  /foods/:id(.:format)                    foods#update
#                        PUT    /foods/:id(.:format)                    foods#update
#                        DELETE /foods/:id(.:format)                    foods#destroy
#                 groups GET    /groups(.:format)                       groups#index
#                        POST   /groups(.:format)                       groups#create
#                  group GET    /groups/:id(.:format)                   groups#show
#                        PATCH  /groups/:id(.:format)                   groups#update
#                        PUT    /groups/:id(.:format)                   groups#update
#                        DELETE /groups/:id(.:format)                   groups#destroy
#          phyactivities GET    /phyactivities(.:format)                phyactivities#index
#                        POST   /phyactivities(.:format)                phyactivities#create
#            phyactivity GET    /phyactivities/:id(.:format)            phyactivities#show
#                        PATCH  /phyactivities/:id(.:format)            phyactivities#update
#                        PUT    /phyactivities/:id(.:format)            phyactivities#update
#                        DELETE /phyactivities/:id(.:format)            phyactivities#destroy
#               pictures GET    /pictures(.:format)                     pictures#index
#                        POST   /pictures(.:format)                     pictures#create
#                picture GET    /pictures/:id(.:format)                 pictures#show
#                        PATCH  /pictures/:id(.:format)                 pictures#update
#                        PUT    /pictures/:id(.:format)                 pictures#update
#                        DELETE /pictures/:id(.:format)                 pictures#destroy
#                 places GET    /places(.:format)                       places#index
#                        POST   /places(.:format)                       places#create
#                  place GET    /places/:id(.:format)                   places#show
#                        PATCH  /places/:id(.:format)                   places#update
#                        PUT    /places/:id(.:format)                   places#update
#                        DELETE /places/:id(.:format)                   places#destroy
#                  plans GET    /plans(.:format)                        plans#index
#                        POST   /plans(.:format)                        plans#create
#                   plan GET    /plans/:id(.:format)                    plans#show
#                        PATCH  /plans/:id(.:format)                    plans#update
#                        PUT    /plans/:id(.:format)                    plans#update
#                        DELETE /plans/:id(.:format)                    plans#destroy
#          tipactivities GET    /tipactivities(.:format)                tipactivities#index
#                        POST   /tipactivities(.:format)                tipactivities#create
#            tipactivity GET    /tipactivities/:id(.:format)            tipactivities#show
#                        PATCH  /tipactivities/:id(.:format)            tipactivities#update
#                        PUT    /tipactivities/:id(.:format)            tipactivities#update
#                        DELETE /tipactivities/:id(.:format)            tipactivities#destroy
#               tipdiets GET    /tipdiets(.:format)                     tipdiets#index
#                        POST   /tipdiets(.:format)                     tipdiets#create
#                tipdiet GET    /tipdiets/:id(.:format)                 tipdiets#show
#                        PATCH  /tipdiets/:id(.:format)                 tipdiets#update
#                        PUT    /tipdiets/:id(.:format)                 tipdiets#update
#                        DELETE /tipdiets/:id(.:format)                 tipdiets#destroy
#         user_histories GET    /users/:user_id/histories(.:format)     histories#index
#                        POST   /users/:user_id/histories(.:format)     histories#create
#           user_history GET    /users/:user_id/histories/:id(.:format) histories#show
#                        PATCH  /users/:user_id/histories/:id(.:format) histories#update
#                        PUT    /users/:user_id/histories/:id(.:format) histories#update
#                        DELETE /users/:user_id/histories/:id(.:format) histories#destroy
#          user_comments GET    /users/:user_id/comments(.:format)      comments#index
#                        POST   /users/:user_id/comments(.:format)      comments#create
#           user_comment GET    /users/:user_id/comments/:id(.:format)  comments#show
#                        PATCH  /users/:user_id/comments/:id(.:format)  comments#update
#                        PUT    /users/:user_id/comments/:id(.:format)  comments#update
#                        DELETE /users/:user_id/comments/:id(.:format)  comments#destroy
#                  users GET    /users(.:format)                        users#index
#                        POST   /users(.:format)                        users#create
#                   user GET    /users/:id(.:format)                    users#show
#                        PATCH  /users/:id(.:format)                    users#update
#                        PUT    /users/:id(.:format)                    users#update
#                        DELETE /users/:id(.:format)                    users#destroy
# 

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
  post 'auth/request', to:'authorization#get_authorization'
  #mount_devise_token_auth_for 'User', at: 'auth'
  resources :placephyactivityrecords
  resources :eventplacerecords
  resources :planphyactivityrecords
  resources :dietfoodrecords
  resources :usertipactivityrecords
  resources :usertipdietrecords
  resources :usergrouprecords
  resources :usereventrecords
  resources :userplanrecords
  resources :userdietrecords
  resources :userachievementrecords
  resources :achievements
  resources :diets
  resources :diseases
  resources :events
  resources :foods
  resources :groups
  resources :phyactivities
  resources :pictures
  resources :places
  resources :plans
  resources :tipactivities #, only: [:show, :destroy]
  resources :tipdiets
  

  resources :users do
    resources :histories
    resources :comments

  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
