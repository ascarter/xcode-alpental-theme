alias default := build

build:
    mkdir -p themes
    veneer build src themes

install:
    mkdir -p "{{env_var('HOME')}}/Library/Developer/Xcode/UserData/FontAndColorThemes"
    cp -f themes/*.xccolortheme "{{env_var('HOME')}}/Library/Developer/Xcode/UserData/FontAndColorThemes/"

clean:
    rm -rf themes
