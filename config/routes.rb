Rails.application.routes.draw do
  # post 'ufs/respuesta'
  post 'ufs/:date', to: 'ufs#respuesta' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
