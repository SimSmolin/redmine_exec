# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get 'exec/:id/getfile', to: 'exec#get_file', as: 'get_file'
get 'exec/execscript', to: 'exec#run_script'