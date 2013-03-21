# Allow usage on Vagrant
if Rails.env == :development
	BetterErrors::Middleware.allow_ip! "10.0.2.2" if defined? BetterErrors && Rails.env == :development
end