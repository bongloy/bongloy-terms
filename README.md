# Bongloy's Terms of Service

Bongloy's terms of service. Browse here for previous versions and diffs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bongloy-terms'
```

## Usage

To include Bongloy's terms into a Rails application add the following line to your `ApplicationController`

```ruby
class ApplicationController < ActionController::Base
  helper Bongloy::Terms::ApplicationHelper
end
```

The following helpers allow you to include the latest terms into your Rails application

```html
  <%= bongloy_terms %>
```
