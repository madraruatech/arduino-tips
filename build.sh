###############################################################################
##
## This script generates the GitHub pages assets.
##
###############################################################################
pandoc --metadata pagetitle="Arduino Tips" --standalone --section-divs -t revealjs -V theme=white -V transition=concave -V center=false index.md -o docs/index.html
pandoc --metadata pagetitle="Connecting your Arduino" --standalone --section-divs -t revealjs -V theme=white -V transition=concave -V center=false connecting.md -o docs/connecting.html
pandoc --metadata pagetitle="Arduino Components" --standalone --section-divs -t revealjs -V theme=white -V transition=concave -V center=false components.md -o docs/components.html
pandoc --metadata pagetitle="Trouble Shooting your Arduino" --standalone --section-divs -t revealjs -V theme=white -V transition=concave -V center=false trouble-shooting.md -o docs/trouble-shooting.html

