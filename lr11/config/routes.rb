Rails.application.routes.draw do
  root to: 'armstrong_number#input'

  get 'armstrong_number/input'

  get 'armstrong_number/output'

  get 'armstrong_number/get_last'

  get 'armstrong_number/result_in_xml'

  #get '/output', to: 'armstrong_number#get_last'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
