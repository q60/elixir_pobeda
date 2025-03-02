docker build -t elixir_pobeda .
docker save -o elixir_pobeda.tar elixir_pobeda
gzip -f elixir_pobeda.tar
scp elixir_pobeda.tar.gz ep:~
