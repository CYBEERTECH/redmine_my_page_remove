# This plugin is a modified version of the 'redmine_home_page_redirector' plugin
# by Jean-Marc Lagac (https://github.com/jmlagace/redmine_home_page_redirector).
# Original functionality has been altered to keep users on the Home page and remove My page.

require 'redmine'

Redmine::Plugin.register :redmine_my_page_remove do
  name 'My Page Remove'
  author 'Marcus Vendittuoli'
  description 'Ensures users stay on the Home page and removes the My Page link.'
  version '0.0.1'
  url 'https://github.com/CYBEERTECH/redmine_my_page_remove'
  author_url 'https://github.com/CYBEERTECH'
  delete_menu_item :top_menu, :my_page

requires_redmine version_or_higher: '5.0.0'
end

