;;; project.el --- Dungeons and Dragons 2023 Session Reference -*- lexical-binding: t; -*-
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary: :v
;;
;;  Description
;;
;;; Code:

(require 'ox-publish)

(setq org-publish-project-alist
      '(
        ("org" :components ("org-notes" "org-static"))

        ("org-notes"
         :base-directory "~/tmp/dnd/"
         :base-extension "org"
         :publishing-directory "~/tmp/dnd-public"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4

         :with-toc nil
         :with-author nil
         )

        ("org-static"
         :base-directory "~/tmp/dnd/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/tmp/dnd-public/"
         :recursive t
         :publishing-function org-publish-attachment
         )


        ))


(provide 'project)

;;; project.el ends here
