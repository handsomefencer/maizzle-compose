## Why use Maizzle Compose?

Maizzle helps you write clean and fast email templates using inline styles and Rails lets you to preview them with interpolated code. 

With Maizzle Compose, you get both. 

## Getting Started

Clone maizzle-compose adjacent your rails app: 

```bash
git clone git@github.com:handsomefencer/maizzle-compose.git
```

...such that:

```
$ ls -d */
maizzle-compose/  your-rails-app/
```

Copy docker-compose.example.yml to docker-compose.yml:

```
$ cp docker-compose.example.yml docker-compose.yml
```

Edit your docker-compose.yml such that if the name of your rails app is your-rails-app then the build section of your miazzle service looks like:

```
# docker-compose.yml
services:
  maizzle: 
    build:
      additional_contexts:
        maizzle-src: .
        app-src: ../your-rails-app/maizzle
```

...and such that the volumes section looks like:

```
...
    volumes:
      - node_modules:/artifact/node_modules
      - ../<your-rails-app>/app/views/devise:/artifact/app/views/devise
      - ./src:/artifact/src
```

Build the maizzle image inside maizzle-compose:

```
$ cd maizzle-compose
$ docker compose build maizzle
```

To start the dev service:

```
$ docker compose run --rm dev
```

To build for production:

```
$ docker compose run --rm maizzle
```

## Maizzle Documentation

Maizzle documentation is available at https://maizzle.com

## Issues

Please open all issues in the [framework repository](https://github.com/maizzle/framework).

## License

The Maizzle framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

[npm]: https://www.npmjs.com/package/@maizzle/framework
[npm-stats]: https://npm-stat.com/charts.html?package=%40maizzle%2Fframework&from=2019-03-27
[npm-version-shield]: https://img.shields.io/npm/v/@maizzle/framework.svg
[npm-stats-shield]: https://img.shields.io/npm/dt/@maizzle/framework.svg?color=6875f5
[github-ci]: https://github.com/maizzle/framework/actions
[github-ci-shield]: https://github.com/maizzle/framework/actions/workflows/nodejs.yml/badge.svg
[license]: ./LICENSE
[license-shield]: https://img.shields.io/npm/l/@maizzle/framework.svg?color=0e9f6e
