Rails.application.routes.draw do
  # http_verb '/path', to: 'controller#action', as: :prefix
  root to: 'flats#index'
  get '/flats/:id', to: 'flats#show', as: :flat
end

# { id: '12314123'}

# CRUD controller actions
# index -> read all
# show -> read one
