#!/usr/bin/env sh

# Plugins

asdf plugin add dotnet https://github.com/hensou/asdf-dotnet
asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang
asdf plugin add golang https://github.com/kennyp/asdf-golang
asdf plugin add gradle https://github.com/rfrancis/asdf-gradle
asdf plugin add groovy https://github.com/weibemoura/asdf-groovy
asdf plugin add haskell https://github.com/vic/asdf-haskell
asdf plugin add java https://github.com/halcyon/asdf-java
asdf plugin add kotlin https://github.com/asdf-community/asdf-kotlin
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs
asdf plugin add php https://github.com/asdf-community/asdf-php
asdf plugin add python https://github.com/danhper/asdf-python
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby
asdf plugin add scala https://github.com/asdf-community/asdf-scala


# NodeJS

asdf install nodejs 18.15.0
asdf global nodejs 18.15.0

# .NET

asdf install dotnet 7.0.100
asdf global dotnet 7.0.100

# Java

asdf install java temurin-19.0.1+10
asdf global java temurin-19.0.1+10

# Erlang

asdf install erlang 25.1.2
asdf global erlang 25.1.2

# Elixir

asdf install elixir 1.14.2-otp-25
asdf global elixir 1.14.2-otp-25
