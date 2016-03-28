import mechanize

br = mechanize.Browser()

url = "http://power.cityinthe.cloud/login"
response = br.open(url)

br.select_form(nr=0)

br.form['email'] = "contact@cyberskyline.net"
br.form['pin'] = '0000'

br.method = "POST"

response = br.submit()

print response.geturl()
