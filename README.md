# Before Actions

Organize your controllers by grouping your before and after filters.

## Status

[![Gem Version](https://badge.fury.io/rb/before_actions.png)](http://badge.fury.io/rb/before_actions)
[![Dependency Status](https://gemnasium.com/before-actions-gem/before_actions.svg)](https://gemnasium.com/before-actions-gem/before_actions)
[![Inline docs](http://inch-ci.org/github/before-actions-gem/before_actions.png)](http://inch-ci.org/github/before-actions-gem/before_actions)
[![Code Climate](https://codeclimate.com/github/before-actions-gem/before_actions.png)](https://codeclimate.com/github/before-actions-gem/before_actions)
[![Code Climate](https://codeclimate.com/github/before-actions-gem/before_actions/coverage.png)](https://codeclimate.com/github/before-actions-gem/before_actions)
[![License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/before-actions-gem/before_actions/blob/master/LICENSE.md)


## References

* Home page: https://github.com/before-actions-gem/before_actions
* API Doc: http://rdoc.info/gems/before_actions
* Version: https://rubygems.org/gems/before_actions
* Trello Board: https://trello.com/b/PMRfJAqq/before-actions-gem

## Support

* Bugs/Issues: https://github.com/before-actions-gem/before_actions/issues
* Support: http://stackoverflow.com/questions/tagged/before_actions
* Support/Chat: [![Gitter chat](https://badges.gitter.im/before-actions-gem/before_actions.png)](https://gitter.im/before-actions-gem/before_actions)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'before_actions'
```

And then execute:

```bash
bundle
rails g before_actions:template
```


## Upgrading from 1.*

```bash
bundle update before_actions
rails g before_actions:template
```

Then simply adjust your controllers to the new syntax


## Demo

It's simple!

```ruby
class ContactsController < ApplicationController

  # load and authorize resources
  before_actions do
    # listing actions
    only(:index) { @contacts = Contact.all }

    # building actions
    only(:new)    { @contact = Contact.new }
    only(:create) { @contact = Contact.new(contact_params) }

    # member actions, will raise a 404 if the model is not found
    only(:show, :edit, :update, :destroy) { @contact = Contact.find(params[:id]) }
  end

  after_actions do
    all { your_code_here }
    except(:index) { your_code_here }
  end


  around_actions do
    only(:create) do |controller, action|
      your_code
      action.call
      in_here
    end
  end

  ...

  def contact_params
    params.require(:contact).permit(:name)
  end
end
```

#### Restful Controller

<img src="readme_images/resource.png" alt="resource.png" />

#### Nested Resourceful Controller

<img src="readme_images/nested.png" alt="nested.png" />







## Contributing

1. Fork it ( https://github.com/github.com/before-actions-gem/before_actions/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Versioning

__Before Actions__ uses [Semantic Versioning 2.0.0](http://semver.org)
