# How To Site

By [Lillian Ng](http://github.com/orangeninjamidget)

# Description
This Rails 4 application allows you to make many lists and add tasks to a list. It uses nested resources to allow for this behavior.

```rails
  resources :lists do
    resources :tasks
  end
```
