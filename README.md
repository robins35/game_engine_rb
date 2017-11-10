# GameEngine

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/game_engine`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Dependencies:
### Linux
    * Ubuntu/Mint
      ```bash
      sudo apt-get install build-essential libsdl2-dev libsdl2-ttf-dev libpango1.0-dev \
                           libgl1-mesa-dev libopenal-dev libsndfile-dev libmpg123-dev \
                                                libgmp-dev
      ```

    * Debian 8 with Nvidia GPU
      Check here if any trouble: https://www.libgosu.org/cgi-bin/mwf/topic_show.pl?pid=8476#pid8476

    * Arch/Manjaro
      ```bash
      sudo pacman -S openal pango sdl2 sdl2_ttf libsndfile pkg-config mpg123
      ```

    * Fedora
      ```bash
      sudo dnf groupinstall --assumeyes "Development Tools"
      sudo dnf install --assumeyes mpg123-devel mesa-libGL-devel openal-devel pango-devel SDL2_ttf-devel libsndfile-devel gcc-c++ redhat-rpm-config
      ```

    * Gentoo (What it was developed on)
      ```bash
      # Gosu's dependencies for both C++ and Ruby, ensure you have the 'opengl' USE Flag set globally or at least for media-libs/libsdl2.
      sudo emerge -av media-libs/mesa media-libs/openal x11-libs/pango media-libs/sdl2-ttf media-libs/libsndfile
      ```

### Mac OS X
  ```bash
  brew install sdl2
  ```

  Check if it works with this (You should see a window):

  ```bash
  ruby -rgosu -e 'w = Gosu::Window.new(200, 150); w.caption = "It works!"; w.show'
  ```

### Microsoft Windows
  * Should JustWork(tm), but I'm not positive.

Add this line to your application's Gemfile:

```ruby
gem 'game_engine'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install game_engine

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/game_engine.
