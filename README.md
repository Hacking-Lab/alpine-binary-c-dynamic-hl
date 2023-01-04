# Alpine-Binary-C-Dynamic
This docker is based on the Alpine Binary C app with compiled image of the Hacking-Lab CTF system.  
This docker provides a executable Binary C app with compiled flag.
Flag is compiled with Binary

## Customizing
- Place your binary/c file in `./root/src/binary.c`
- Change if required listening port in `./root/etc/services.d/run`
  example - `exec socat TCP-LISTEN:1234,fork,reuseaddr EXEC:/web/binary`


## Building & testing
- Build and run: `docker-compose up --build`, then navigate to [http://localhost:80](http://localhost:80)
- Deploy: `./prepare.sh`, then upload `dockerfiles.tar.gz`