Rails.application.routes.draw do
  namespace 'welcome' do
    match 'home' => 'home#index', :view => :get
  end
end
