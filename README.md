Monkey-patch for Opsworks with Chef 11
=========================
Example to use `aws` cookbook with Chef 11.

Requirements
------------
OpsWorks with Chef 11
aws cookbook 3.4.1
aws-sdk gem 2.5.5

Usage
-----
Make aws-sdk-v2 zip file via `rake aws` which you can see in Rakefile.
Just include `install` recipe in your recipe.

```ruby
include_recipe 'your_cookbook::install'
```
