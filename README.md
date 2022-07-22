# Camden::StyleGuide

A Rails engine that provides a visual design template for Camden apps using Webpacker

### Why?

- Avoids keeping some stuff in Sprockets and some in Webpacker, less artifacts to download, cache, better compression etc
- Encourages a consistent design across pages and applications
- Reduces the tendency to reinvent wheels
- Provides an isolated environment for devs and designers to collaborate on design features without setting up and running a target app
- Preserves some of the development and design effort currently being put into apps that may or may not be around in the near future

### What's in the box

This is a Ruby gem containing a Rails engine and a Dockerfile for development purposes. There is a dummy rails app in the test/dummy folder that uses the gem as an example for usage and to support development. The Dockerfile brings up the dummy app and a webpack dev server, so live changes can be made to the guide and viewed in realtime.

## Usage within your Rails app

- Add the gem to the Gemfile (TODO - publish somewhere)

```
gem "camden_style_guide", git: 'git@github.com:wearefuturegov/camden-style-guide.git'
```

And then execute:
```bash
$ bundle
```

- Import the styles in your layout

```
<%= Camden::StyleGuide::TagHelper.style_guide_css_pack_tag :media => "all" %>
```

- You can also view the docs by visiting http://localhost:3000/style-guide

- For production usage you can run `rake camden_style_guide:webpacker:compile` to create the assets which will then be served statically.

## Usage for development of the Guide itself

This ought to start a server so that you can preview the guide at http://localhost:4000/style_guide

`docker-compose up`

This brings up a dev server running on 3056 that shows live updates as you make them (js) or refresh (scss).

## Contributing

1. Add a section to the style guide documentation page `app/views/camden/style_guide/application/index.html.erb` with some example usage and explanation on how to use. 

2. Add some CSS to the `app/frontend/stylesheets/` folder and import it from `app/frontend/packs/style_guide.scss`

3. Bump the version. This is important so that target apps can control when they upgrade their styles

4. Open a PR

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Troubleshooting

If your changing package and gemfile locally you'll likely need to rebuild your images - run `docker-compose build` to get new files into the image