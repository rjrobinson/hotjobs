require "resque_web"
Rails.application.routes.draw do

  root 'incidents#index'
  resources :incidents, only: [ :index, :new, :create, :show ]





  # Background wrokers!  ** BETA VERSION **
  # After devise is installed, wrap this in an authenticate

  ResqueWeb::Engine.eager_load!
  mount ResqueWeb::Engine => "/resque_web"










end
