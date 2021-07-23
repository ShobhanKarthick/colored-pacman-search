BEGIN {
	FS = " "
	cmd = "pacman-conf --repo-list | xargs | sed 's/ /|/g'" 
       	cmd |& getline repos
}

{
	if (NR%2 != 0) {
		printf("\n")
		if ($2 == "[installed]" || $3 == "[installed]" || $4 == "[installed]" || $5 == "[installed]"){
			print("\033[1;32m" "- "  $0)
			getline
			print("\033[1;32m" $0)
		}
		else if ($1 ~ "/"repos"/") {
			print("\033[1;37m" "- "  $0)
		}
	}
	else {
		print ("\033[0;37m" $0)
	}
}

END {}
