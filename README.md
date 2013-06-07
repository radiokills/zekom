#Zekom
This gem implements Slovenian version of European cookie directive.

## Installation

Add to Gemfile:
```ruby
gem 'zekom', :git => 'git://github.com/radiokills/zekom.git'
```

Run the install generator:
```
  $ rails g zekom:install
```

(Optional) Include zekom stylesheet in application.css
```
...
...
*= require_tree .
*= require 'zekom/zekom'
*/
```

## Configuration
This gem comes with some general cookies descriptions. You can add your own in config/initializers/zekom.rb.
You must supply cookies via hash for now.
```ruby
Zekom::Kookie.add({
  :id=>'uservoice',
  :names=>'_uv, jv',
  :expires=>'_uv: 30min, jv: 12 min',
  :description=>'Ti piškotki se uporabljajo za podporo uservoice.' 
  })
```

At the end of file, you can fid this line
```ruby
Zekom::Kookie.use_kookies = %w(adsense)
```

It defines the cookies you want to display in explanation section.
In case of adding new cookies yourself you would change the line accordigly.

At the end of file, you can fid this line
```ruby
Zekom::Kookie.use_kookies = %w(adsense uservoice)
```
Predifined cookies can be found here: https://github.com/radiokills/zekom/blob/master/app/data/cookie_list.yml

##Helpers

__zekom_notification__ - Shows the notification about your page using cookies
__cookie_list__  - Shows cookies descriptions (as defined in yaml file or initializer)
__cookies_allowed - Returns true or false based on user previous decision

##Routes
This gem adds two routes:

your_app/zekom/zekom/about - It displays basic cookie info and lists cookies (via cookie_list helper)
your_app/zekom/allow_cookies - It sets cookie which states that user agree with using cookies