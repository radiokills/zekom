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


This project rocks and uses MIT-LICENSE.