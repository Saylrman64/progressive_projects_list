unless File.basename(File.dirname(__FILE__)) == 'progressive_projects_list'
  raise "Progressive Project List plugin directory should be 'progressive_projects_list' instead of '#{File.basename(File.dirname(__FILE__))}'"
end

Redmine::Plugin.register :progressive_projects_list do
  name 'Progressive Projects List plugin'
  author 'Nicolas Metters / Dmitry Babenko'
  description 'Projects List with menus and progress bars.'
  version '5.0.0'
  url 'https://github.com/nicolasmetters/progressive_projects_list'
  author_url 'https://github.com/nicolasmetters'
  requires_redmine version_or_higher: '5.0'

  settings default: {
    'show_project_description'  => false,
    'show_project_progress'     => true,
    'show_project_menu'         => false,
    'show_only_for_my_projects' => false,
    'show_recent_projects'      => true,
    'show_project_progress_overview' => ''
  }, partial: 'settings/progressive_projects_list'
end

# Before Redmine 5.XX / Rails 6.1
# require 'progressive_projects_list'
# require 'progressive/application_helper_patch'
# require 'progressive/projects_helper_patch'
# require 'progressive/projects_list_view_listener'
# require 'progressive/recent_projects_view_listener'

# Using Redmine 5.XX / Rails 6.1
require File.expand_path('lib/progressive', __dir__)

