Rails.application.routes.draw do
  namespace 'welcome' do
    match 'home' => 'welcome#home', :view => :get
    match 'faq' => 'welcome#faq', :view => :get
    match 'apidoc' => 'apidoc#index', :view => :get
    match 'yard' => 'yard#index', :view => :get
  end
end
