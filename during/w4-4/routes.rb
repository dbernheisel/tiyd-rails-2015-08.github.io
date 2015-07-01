Rails.application.routes.draw do
  get 'api/v1/votes/index' => 'votes#index'

  get 'candidates/index'
  get 'candidates' => 'candidates#index'

  get 'candidates/show'
  get 'candidates/:id/show_now' => 'candidates#show'
end
