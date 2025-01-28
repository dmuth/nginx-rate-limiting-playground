
# Nginx Rate Limiting Playground

This repo has some Docker containers which can be used to test out rate limiting in Nginx.
I was inspired to create this after reading [this blog post](https://dev.to/mspilari/understanding-rate-limiting-a-guide-to-protecting-your-apis-and-applications-254c) from Matheus Bernardes Spilari over on [dev.to](https://dev.to/).

The containers are:

- `httpbin` - An instance of [FastAPI Httpbin](https://httpbin.dmuth.org/), which provides HTTP endpoints.
  - Accessible directly via [http://localhost:8001/](http://localhost:8001/)
- `nginx` - An Nginx webserver acting as a proxy to `httpbin`, along with some rate limiting.
  - Accessible directly via [http://localhost:8000/](http://localhost:8000/)
  - Rate limiting settings should be configured in the `env` file.
- `tools` - A container which has an instance of Apache Benchmark for testing purposes.


## Usage

Edit the `env` file to change settings accordingly in the Nginx config file.  Then start the containers and run something like `./bin/exec-tools-ab.sh -n5` to run 5 queries against the Nginx server.


### Scripts

The `bin/` directory contains a ton of helper scripts which (mostly) map to various Docker Compose commands.
Those scripts can be used to stand up and test out Nginx's rate-limiting:

- `./bin/build.sh` - Build containers
- `./bin/up-d.sh` - Start containers in the background
  - `up.sh` - Use this if you want to start containers in the foreground
- `./bin/ps.sh` - View running containers
- `./bin/logs-f.sh` - View logs from running containers
- `./bin/restart.sh` - Restart containers
- `./bin/kill.sh` - Kill all containers
- `./bin/exec-tools-ab.sh`
  - Wrapper to run `ab` against the `nginx` container from the `tools` container
- `./bin/exec-tools.sh` 
  - Script to spawn an interactive shell on the `tools` container.


## Future Plans

None at the moment!  I build this app mostly to play around with Nginx proxying and rate limiting.  If I have more work to do in that space, I may come back to this project.  Otherwise I won't.

Feel free to make use of this project if you want to play with Nginx rate limiting, though!


## Contact

You can find me on the web at [https://www.dmuth.org/contact](https://www.dmuth.org/contact), or
open an Issue here if you'd like to reach out!


