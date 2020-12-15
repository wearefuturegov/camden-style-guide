Rails.application.routes.draw do
  root to: "application#index"
  mount Camden::StyleGuide::Engine => "/style-guide"
end
