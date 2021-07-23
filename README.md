# Colored Pacman Search 

[Arch Linux](https://archlinux.org/) and arch based derivatives such as [Manjaro](https://manjaro.org/), [Garuda Linux](https://garudalinux.org/) use pacman as their package manager. The command `pacman -Ss <search-key>` can be used to search for packages from the repositories with a specific search key. The output given by the above command is just simple text with color. This makes it tougher to read through the lines of the output. This colored-pacman-search creates a colored output with a good spacing and colors which enblaes good readiblity

## Installation

```
git clone https://github.com/ShobhanKarthick/colored-pacman-search.git
cd colored-pacman-search
mv colored-pacman-search.awk ~/.config/colored-pacman-search.awk
```

Then, run the below command to add thde code to the bottom of your `.bashrc` file. 

```
echo add-pac-search.txt >> .bashrc
```
Now, you will be able to use the command `pac-search <search-key>` to search for a package and the output will be colored with good spacing. 
