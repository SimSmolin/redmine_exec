# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'exec/getfile', to: 'exec#get_file'
get 'exec/execscript', to: 'exec#run_script'