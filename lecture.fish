function lecture
    touch {$argv}.org
    echo -e '#+startup: beamer' \n'#+TITLE: ' \n'#+AUTHOR: Dr. Ridenour' \n'#+DATE: ' >>{$argv}.org
    touch {$argv}-beamer.org
    cat /Users/rlridenour/Dropbox/emacs/beamer/lecture-beamer.org >{$argv}-beamer.org
    echo -e '#+include: "'{$argv}'.org" :minlevel 1' >>{$argv}-beamer.org
    touch {$argv}-notes.org
    cat /Users/rlridenour/Dropbox/emacs/beamer/lecture-notes.org >{$argv}-notes.org
    echo -e '#+include: "'{$argv}'.org" :minlevel 1' >>{$argv}-notes.org
    dired
end

