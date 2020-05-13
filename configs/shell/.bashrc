# Execute every file in .bashrc.d
# -- .bashrc is now modular
for file in ~/.bashrc.d/*; do . "$file"; done

####################################
#    END OF MANUAL INTERVENTION    #
####################################