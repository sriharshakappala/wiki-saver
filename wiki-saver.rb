require "open-uri"

remote_base_url = "http://en.wikipedia.org/wiki"
puts "Enter the page name"
remote_page_name = gets()
remote_full_url = remote_base_url + "/" + remote_page_name

remote_data = open(remote_full_url).read
my_local_file = open("My-Page.html", "w")

my_local_file.write(remote_data)
my_local_file.close