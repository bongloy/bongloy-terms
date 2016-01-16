# Bongloy's Terms of Service

[![Build Status](https://travis-ci.org/bongloy/bongloy-terms.svg?branch=master)](https://travis-ci.org/bongloy/bongloy-terms)

Bongloy's terms of service. Browse here for previous versions and diffs.

* Terms of Service - Cambodia - [website](http://bongloy.com/terms) | [github](https://github.com/bongloy/bongloy-terms/blob/master/kh_terms.en.md)

* Privacy Policy - Cambodia - [website](http://bongloy.com/privacy) | [github](https://github.com/bongloy/bongloy-terms/blob/master/kh_privacy.en.md)

* Prohibited Businesses - Cambodia - [website](http://bongloy.com/prohibited_businesses) | [github](https://github.com/bongloy/bongloy-terms/blob/master/kh_prohibited_businesses.en.md)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bongloy-terms'
```

## Usage

To include Bongloy's terms into a Rails application add the following helper method to your `ApplicationController`

```ruby
class ApplicationController < ActionController::Base
  helper_method :bongloy_terms_renderer

  def bongloy_terms_renderer
    @bongloy_terms_renderer ||= Bongloy::Terms::Renderer.new
  end
end
```

Then you can use it in your views like

```html
  <%= bongloy_terms_renderer.terms(:kh, :en).html_safe %>
```
