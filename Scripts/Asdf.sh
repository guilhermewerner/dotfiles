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

# Go

asdf install golang 1.22.1
asdf global golang 1.22.1

# NodeJS

asdf install nodejs 20.11.1
asdf global nodejs 20.11.1

# .NET

asdf install dotnet 7.0.100
asdf global dotnet 7.0.100

# Java

asdf install java temurin-21.0.2+13.0.LTS
asdf global java temurin-21.0.2+13.0.LTS

# Erlang

asdf install erlang 27.0.1
asdf global erlang 27.0.1

# Elixir

asdf install elixir 1.17.2-otp-27
asdf global elixir 1.17.2-otp-27
