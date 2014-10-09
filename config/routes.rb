# require "resque_web"
Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }


  root 'incidents#welcome'

  resources :incidents do
    resources :updates
  end

  resources :users





  # Background wrokers!  ** BETA VERSION **
  # After devise is installed, wrap this in an authenticate
  #
  # ResqueWeb::Engine.eager_load!
  # mount ResqueWeb::Engine => "/resque_web"










end
