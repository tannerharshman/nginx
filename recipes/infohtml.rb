# Recipe to create a site for voidworks with index.html in a folder named voidworks

# Create directory for the site
directory '/var/www/html/voidworks' do
  owner 'nginx' # Adjust owner and group based on your server configuration (idk what to put here)
  group 'nginx'
  mode '0755'
  action :create
end

# this path is seems wrong also dont know what it should be
file '/var/www/html/voidworks/index.html' do 
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
  owner 'nginx' # Adjust owner and group based on your server configuration (im guessing this would match the previous permissions)
  group 'nginx'
  mode '0644'
  action :create
end

