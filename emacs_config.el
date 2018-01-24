(setq-default indent-tabs-mode nil)
(setq tab-width 4) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)
(setq
   backup-by-copying t ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves")) ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t) ; use versioned backups
(setq auto-save-file-name-transforms
      `(("." . "~/.saves")))

