(provide 'setup-org)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c b") 'org-switchb)

(setq org-directory "~/Org/")
(setq org-default-notes-file (concat org-directory "/Journal2025.org"))
(setq org-agenda-files (cl-remove-if (lambda (k)
				       (string-match "archive" k))
				     (directory-files-recursively org-directory ".org$")))

(setq org-capture-templates
      '(("n" "Templates for Notes")
	
	("nb" "Note" entry (file-+headline org-default-notes-file "Inbox-Notes")
	 "* %?\n %i\n %t")
	("nl" "Note with link" entry (file+headline org-default-notes-file "Inbox-Notes")
	 "* %?\n %i\n %A %t")
	("t" "Templates for TODOs")
	("tb" "Todo Basic" entry (file+headline org-default-notes-file "Inbox-Todo")
	 "* TODO %?\n %i\n %t")
	("ti" "Todo item" item (file+headline org-default-notes-file "Inbox-Todo")
	 "%?\n %t")
	("tl" "Todo Link" entry (file+headline org-default-notes-file "Inbox-Todo")
	 "* TODO %?\n %i\n %A\n %t")))

(setq org-refile-targets '((nil :maxlevel . 9)
			   (org-agenda-files :maxlevel . 9)))
      
      
