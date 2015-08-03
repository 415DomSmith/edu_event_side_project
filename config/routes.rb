Rails.application.routes.draw do

# ======================
# ==== ROOT ROUTE ======
# ======================
  root 'events#index' 

# =========================
# ==== EVENTS ROUTES ======
# ========================= 

  get '/events/index' => 'events#index', as: 'events'

  #MAYBE HAVE A DIFFERENT PAGE FOR EVENTS TODAY, EVENTS BY AREA (SF, EAST BAY, NORTH BAY, ETC), FREE EVENTS

  get '/events/:id' => 'events#show', as: 'event'

  post '/events/' => 'events#create' #NOT SURE WE NEED CREATE ROUTES BECAUSE USERS DONT CREATE OR NAVIGATE TO CREATE AN EVENT

  delete '/events/:id' => 'events#destroy'

# ======================
# ==== TAG ROUTES ======
# ======================

  post '/tags/create' => 'tags#create' #NOT SURE WE NEED CREATE ROUTES BECAUSE USERS DONT CREATE OR NAVIGATE TO CREATE A TAG


  
end


#      Prefix Verb   URI Pattern             Controller#Action

#        root GET    /                       events#index
#      events GET    /events/index(.:format) events#index
#       event GET    /events/:id(.:format)   events#show
#             POST   /events(.:format)       events#create
#             DELETE /events/:id(.:format)   events#destroy
# tags_create POST   /tags/create(.:format)  tags#create