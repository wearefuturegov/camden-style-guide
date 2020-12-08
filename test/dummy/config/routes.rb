Rails.application.routes.draw do
  mount Camden::StyleGuide::Engine => "/style-guide"
end
