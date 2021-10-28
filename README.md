# REST Practice

Let's practice REST in a Rails context

## Quickstart

```bash
git clone <this repo>
cd rest-practice
bundle
rails s
```

## Quickstart (Docker)

```bash
git clone <this repo>
cd rest-practice
docker build -t rest-practice .
docker run -p 3000:3000 -v $(pwd):/usr/src/app rest-practice
```

Then visit http://localhost:3000 and you should see an amazing homepage

## TODO

1. We'll walk through how this app is currently working... notice anything odd about it?
2. We'll refactor the routes to be more RESTful and see how this simplifies things
3. We'll refactor the form to use `form_for` and be bound to the resource
4. Over to you... let's add the ability to comment on a post. What routing schemes could we consider? What are the pros/cons?

