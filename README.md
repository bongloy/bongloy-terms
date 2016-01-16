# Bongloy's Terms of Service

Bongloy's terms of service. Browse here for previous versions and diffs.

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
