# Your Local Location Caterer

A single web page that allows a user to input an address and geocode it using the Google geocoding API (http://bit.ly/1QYAQv1).

It also lists previously saved locations.

## License

All source code is available jointly under the MIT License and the Beerware License.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
// or
$ guard
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server webrick
```

* Ruby version
ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin14]
