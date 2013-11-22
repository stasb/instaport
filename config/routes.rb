Instaport::Application.routes.draw do
  get '/import_airports', to: 'data#import_airports'
end
