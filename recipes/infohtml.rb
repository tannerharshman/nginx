# Recipe to create a site for voidworks with index.html in the default Nginx web root directory

# Define the default web root directory for Nginx on Red Hat-based systems
nginx_web_root = '/usr/share/nginx/html'

# Create directory for the site
directory "#{nginx_web_root}/voidworks" do
  owner 'nginx'
  group 'nginx'
  mode '0755'
  action :create
end

# Create index.html file
file "#{nginx_web_root}/voidworks/index.html" do
  content '<!DOCTYPE html>
  <html>
  <head>
      <title>Welcome to Voidworks!</title>
  </head>
  <body>
      <h1>Enter The Void</h1>
      <p>This is a placeholder.</p>
  </body>
  </html>'
  owner 'nginx'
  group 'nginx'
  mode '0644'
  action :create
end

