class ApplicationController < ActionController::Base
	cert = LetsEncrypt::Certificate.create(domain: 'destoffe.se')
	cert.get
end
