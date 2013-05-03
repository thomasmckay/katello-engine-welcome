Rails.application.routes.draw do
  namespace 'welcome' do
    match 'home' => 'welcome#home', :view => :get
    match 'faq' => 'welcome#faq', :view => :get
  end
end
