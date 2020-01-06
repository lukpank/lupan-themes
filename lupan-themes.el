;;; lupan-themes.el --- lupan's themes for Emacs  -*- lexical-binding: t -*-

;; Copyright (C) 2019-2020 Łukasz Pankowski

;; Author: Łukasz Pankowski <lukpank@o2.pl>
;; Version: 0.1.0
;; URL: https://github.com/lukpank/lupan-themes

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; A light and dark themes for Emacs using material design colors.

;;; Code:

(defun lupan-themes-create-theme (theme)
  (let* ((dark (eq theme 'lupan-dark))
	 (red-1-9 (if dark "#ffcdd2" "#b71c1c"))
	 (red-2-6 (if dark "#ef9a9a" "#e53935"))
	 (red-4 "#ef5350")
	 (red-7-1 (if dark "#d32f2f" "#ffcdd2"))
	 (red-9-0 (if dark "#b71c1c" "#ffebee"))
	 (red-9-1 (if dark "#b71c1c" "#ffcdd2"))
	 (pink-2-6 (if dark "#f48fb1" "#d81b60"))
	 (purple-2-6 (if dark "#ce93d8" "#8e24aa"))
	 (purple-4 "#ab47bc")
	 (indigo-2-6 (if dark "#9fa8da" "#3949ab"))
	 (indigo-8-1 (if dark "#283593" "#c5cae9"))
	 (blue-2-6 (if dark "#90caf9" "#1e88e5"))
	 (blue-6-2 (if dark "#1e88e5" "#90caf9"))
	 (cyan-2-6 (if dark "#80deea" "#00acc1"))
	 (teal-2-6 (if dark "#80cbc4" "#00897b"))
	 (teal-6-1 (if dark "#00897b" "#b2dfdb"))
	 (green-1-9 (if dark "#c8e6c9" "#1b5e20"))
	 (green-2-6 (if dark "#a5d6a7" "#43a047"))
	 (green-7-1 (if dark "#388e3c" "#c8e6c9"))
	 (green-9-0 (if dark "#1b5e20" "#e8f5e9"))
	 (green-9-1 (if dark "#1b5e20" "#c8e6c9"))
	 (light-green-2-6 (if dark "#c5e1a5" "#7cb342"))
	 (lime-2-7 (if dark "#e6ee9c" "#afb42b"))
	 (lime-4 "#d4e157")
	 (lime-7-2 (if dark "#afb42b" "#e6ee9c"))
	 (yellow-2-6 (if dark "#fff59d" "#fdd835"))
	 (yellow-4 "#ffee58")
	 (yellow-9 "#f57f17")
	 (orange-2-6 (if dark "#ffcc80" "#fb8c00"))
	 (orange-4-6 (if dark "#ffa726" "#fb8c00"))
	 (orange-2-8 (if dark "#ffcc80" "#ef6c00"))
	 (deep-orange-2-6 (if dark "#ffab91" "#f4511e"))
	 (brown-2 "#bcaaa4")
	 (brown-2-3 (if dark "#bcaaa4" "#a1887f"))
	 (brown-2-6 (if dark "#bcaaa4" "#6d4c41"))
	 (brown-4 "#8d6e63")
	 (grey-0 "#fafafa")
	 (grey-2-6 (if dark "#eeeeee" "#757575"))
	 (grey-4-6 (if dark "#bdbdbd" "#757575"))
	 (grey-5 "#9e9e9e")
	 (grey-6-4 (if dark "#757575" "#bdbdbd"))
	 (grey-7-1 (if dark "#616161" "#f5f5f5"))
	 (grey-8-1 (if dark "#424242" "#f5f5f5"))
	 (grey-9 "#212121")
	 (grey-9-2 (if dark "#212121" "#eeeeee"))
	 (blue-grey-2-4 (if dark "#b0bec5" "#78909c"))
	 (blue-grey-2-6 (if dark "#b0bec5" "#546e7a"))
	 (blue-grey-6-0 (if dark "#546e7a" "#eceff1"))
	 (blue-grey-6-2 (if dark "#546e7a" "#b0bec5"))
	 (blue-grey-7-1 (if dark "#455a64" "#cfd8dc"))
	 (default-bg (if dark "#424242" "#fafafa"))
	 (default-fg (if dark "#eeeeee" "#424242")))
    (custom-theme-set-faces
     theme
     `(default ((t (:background ,default-bg :foreground ,default-fg))))
     `(fringe ((t (:background ,grey-9-2))))
     `(cursor ((t (:inverse-video t :background ,red-2-6))))
     `(bold ((t (:weight bold))))
     `(font-lock-keyword-face ((t (:foreground ,blue-2-6))))
     `(font-lock-function-name-face ((t (:foreground ,indigo-2-6))))
     `(font-lock-builtin-face ((t (:foreground ,cyan-2-6))))
     `(link ((t (:foreground ,cyan-2-6 :underline t))))
     `(link-visited ((t ( :foreground ,purple-2-6 :underline t))))
     `(font-lock-string-face ((t ( :foreground ,teal-2-6))))
     `(font-lock-constant-face ((t ( :foreground ,lime-2-7))))
     `(font-lock-variable-name-face ((t ( :foreground ,green-2-6))))
     `(font-lock-type-face ((t (:foreground ,light-green-2-6))))
     `(custom-state ((t (:foreground ,light-green-2-6))))
     `(font-lock-comment-face ((t ( :foreground ,blue-grey-2-6))))
     `(mode-line ((t (:background ,blue-grey-7-1 :foreground ,default-fg :box (:line-width -1 :style released-button)))))
     `(mode-line-inactive ((t (:background ,grey-6-4 :foreground ,default-fg :box (:line-width -1 :style released-button) :inherit (mode-line)))))
     `(minibuffer-prompt ((t (:foreground ,cyan-2-6))))
     `(region ((t (:background ,indigo-8-1 :extend t))))
     `(shadow ((t (:foreground ,grey-6-4))))
     `(highlight ((t (:background ,teal-6-1))))
     `(show-paren-match ((t (:background ,blue-6-2 :foreground ,default-fg))))
     `(gnus-group-mail-3 ((t (:foreground ,green-2-6 :weight bold))))
     `(gnus-group-mail-3-empty ((t (:foreground ,green-2-6))))
     `(gnus-summary-normal-ancient ((t (:foreground ,cyan-2-6))))
     `(gnus-summary-normal-read ((t (:foreground ,light-green-2-6))))
     `(gnus-summary-normal-ticked ((t (:foreground ,pink-2-6))))
     `(term-color-black ((t (:background ,grey-9 :foreground ,grey-9))))
     `(term-color-blue ((t (:background ,blue-2-6 :foreground ,blue-2-6))))
     `(term-color-cyan ((t (:background ,cyan-2-6 :foreground ,cyan-2-6))))
     `(term-color-green ((t (:background ,green-2-6 :foreground ,green-2-6))))
     `(term-color-magenta ((t (:background ,purple-2-6 :foreground ,purple-2-6))))
     `(term-color-red ((t (:background ,red-2-6 :foreground ,red-2-6))))
     `(term-color-white ((t (:background ,grey-0 :foreground ,grey-0))))
     `(term-color-yellow ((t (:background ,yellow-2-6 :foreground ,yellow-2-6))))
     `(header-line ((t (:foreground ,purple-2-6))))
     '(org-level-1 ((t (:height 1.3 :inherit (header-line)))))
     '(org-level-2 ((t (:height 1.2 :inherit (header-line)))))
     '(org-level-3 ((t (:height 1.1 :inherit (header-line)))))
     `(org-ellipsis ((t (:foreground ,yellow-9))))
     `(org-hide ((t (:foreground ,default-bg))))
     `(org-todo ((t (:foreground ,red-2-6 :weight bold))))
     `(org-done ((t (:foreground ,light-green-2-6 :weight bold))))
     `(info-menu-star ((t (:foreground ,red-2-6))))
     `(isearch ((t (:background ,yellow-4 :foreground ,grey-9))))
     `(isearch-fail ((t (:background ,red-2-6 :foreground ,red-9-0))))
     `(ido-only-match ((t (:foreground ,green-2-6))))
     `(ido-subdir ((t (:foreground ,blue-2-6 :weight bold))))
     `(lazy-highlight ((t (:background ,purple-4 :foreground ,grey-0))))
     `(helm-selection ((t (:background ,blue-grey-7-1))))
     `(helm-match ((t (:foreground ,red-2-6))))
     `(helm-separator ((t (:foreground ,red-2-6))))
     `(helm-candidate-number ((t (:background ,blue-grey-2-4 :foreground ,default-bg))))
     `(helm-source-header ((t (:background ,blue-grey-6-2 :foreground ,grey-2-6 :weight bold :height 1.3 :family "Sans Serif"))))
     `(helm-swoop-target-line-face ((t (:background ,yellow-4 :foreground ,grey-9))))
     `(helm-swoop-target-line-block-face ((t (:background ,lime-4 :foreground ,grey-9))))
     `(helm-swoop-target-word-face ((t (:background ,purple-4 :foreground ,grey-0))))
     `(helm-M-x-key ((t (:foreground ,orange-2-6))))
     `(helm-buffer-not-saved ((t (:foreground ,red-4))))
     `(helm-buffer-size ((t (:foreground ,brown-2-6))))
     `(helm-buffer-directory ((t (:foreground ,blue-2-6 :weight bold))))
     `(helm-buffer-process ((t (:foreground ,green-2-6))))
     `(helm-ff-directory ((t (:foreground ,blue-2-6 :weight bold))))
     `(helm-ff-dotted-directory ((t (:background ,grey-6-4 :foreground ,default-fg))))
     `(helm-ff-executable ((t (:foreground ,green-2-6))))
     `(helm-ff-invalid-symlink ((t (:background ,red-4 :foreground ,grey-9))))
     `(helm-ff-pipe ((t (:background ,grey-9 :foreground ,yellow-4))))
     `(helm-ff-socket ((t (:foreground ,purple-2-6))))
     `(helm-ff-suid ((t (:background ,red-4 :foreground ,grey-0))))
     `(helm-git-grep-match ((t (:foreground ,red-4))))
     `(helm-ls-git-added-copied-face ((t (:foreground ,light-green-2-6))))
     `(helm-ls-git-added-modified-face ((t (:foreground ,blue-2-6))))
     `(helm-ls-git-conflict-face ((t (:foreground ,purple-2-6))))
     `(helm-ls-git-deleted-and-staged-face ((t (:foreground ,grey-2-6))))
     `(helm-ls-git-deleted-not-staged-face ((t (:foreground ,brown-2-6))))
     `(helm-ls-git-modified-and-staged-face ((t (:foreground ,deep-orange-2-6))))
     `(helm-ls-git-modified-not-staged-face ((t (:foreground ,orange-2-6))))
     `(helm-ls-git-renamed-modified-face ((t (:foreground ,deep-orange-2-6))))
     `(helm-ls-git-untracked-face ((t (:foreground ,red-2-6))))
     `(helm-grep-file ((t (:foreground ,green-2-6 :weight bold))))
     `(helm-grep-lineno ((t (:foreground ,orange-2-6))))
     `(helm-rg-directory-header-face ((t (:foreground ,purple-2-6))))
     `(helm-rg-error-message ((t (:foreground ,red-2-6))))
     `(helm-rg-file-match-face ((t (:foreground ,green-2-6 :weight bold))))
     `(helm-rg-line-number-match-face ((t (:foreground ,orange-2-6))))
     `(helm-rg-active-arg-face ((t (:foreground ,light-green-2-6))))
     `(helm-rg-base-rg-cmd-face ((t (:foreground ,grey-5))))
     `(helm-rg-inactive-arg-face ((t (:foreground ,grey-5))))
     `(helm-rg-title-face ((t (:foreground ,purple-2-6))))
     `(helm-lisp-show-completion ((t (:background ,blue-grey-6-2))))
     `(dired-directory ((t (:foreground ,blue-2-6 :weight bold))))
     `(dired-special ((t (:background ,grey-9 :foreground ,yellow-4))))
     `(dired-symlink ((t (:foreground ,cyan-2-6))))
     `(diff-added ((t (:background ,green-9-0 :extend t))))
     `(diff-indicator-added ((t (:foreground ,green-2-6 :inherit (diff-added)))))
     `(diff-refine-added ((t (:background ,green-7-1))))
     `(diff-removed ((t (:background ,red-9-0 :extend t))))
     `(diff-indicator-removed ((t (:foreground ,red-2-6 :inherit (diff-removed)))))
     `(diff-refine-removed ((t (:background ,red-7-1))))
     `(smerge-base ((t (:background ,lime-7-2))))
     `(smerge-lower ((t (:background ,green-9-0))))
     `(smerge-markers ((t (:background ,grey-6-4))))
     `(smerge-refined-added ((t (:background ,green-7-1))))
     `(smerge-refined-removed ((t (:background ,red-7-1))))
     `(smerge-upper ((t (:background ,red-9-0))))
     `(magit-section-heading ((t (:foreground ,deep-orange-2-6))))
     `(magit-section ((t (:background ,grey-8-1))))
     `(magit-section-highlight ((t (:background ,blue-grey-7-1))))
     `(magit-diff-context-highlight ((t (:background ,blue-grey-6-0 :foreground ,blue-grey-2-6))))
     `(magit-diff-context ((t (:background ,grey-7-1 :foreground ,grey-4-6))))
     `(magit-diff-hunk-heading ((t (:background ,grey-8-1 :foreground ,grey-5))))
     `(magit-diff-hunk-heading-highlight ((t (:background ,blue-grey-7-1 :foreground ,blue-grey-2-6))))
     `(magit-diff-added ((t (:background ,green-9-0 :foreground ,green-2-6 :extend t))))
     `(magit-diff-removed ((t (:background ,red-9-0 :foreground ,red-2-6 :extend t))))
     `(magit-diff-added-highlight ((t (:background ,green-9-1 :foreground ,green-1-9 :extend t))))
     `(magit-diffstat-added ((t (:foreground ,green-2-6))))
     `(magit-diffstat-removed ((t (:foreground ,red-2-6))))
     `(magit-diff-removed-highlight ((t (:background ,red-9-1 :foreground ,red-1-9 :extend t))))
     `(magit-diff-lines-heading ((t (:background ,orange-4-6 :foreground ,grey-9))))
     '(magit-diff-whitespace-warning ((t (:inherit (trailing-whitespace)))))
     `(trailing-whitespace ((t (:background ,red-2-6))))
     `(magit-branch-local ((t (:foreground ,cyan-2-6))))
     '(magit-branch-current ((t (:box (:line-width 1 :color nil :style nil) :inherit (magit-branch-local)))))
     `(local-branch-remote ((t (:foreground ,green-2-6))))
     '(magit-branch-remote-head ((t (:box (:line-width 1 :color nil :style nil) :inherit (magit-branch-remote)))))
     `(magit-hash ((t (:foreground ,grey-4-6))))
     `(magit-author ((t (:foreground ,deep-orange-2-6))))
     `(magit-blame-highlight ((t (:background ,blue-grey-7-1 :foreground ,blue-grey-2-6))))
     `(magit-tag ((t (:foreground ,orange-2-6))))
     `(magit-bisect-bad ((t (:foreground ,red-4))))
     `(magit-bisect-good ((t (:foreground ,lime-2-7))))
     `(magit-bisect-skip ((t (:foreground ,brown-2-3))))
     `(magit-cherry-unmatched ((t (:foreground ,cyan-2-6))))
     `(magit-cherry-equivalent ((t (:foreground ,purple-2-6))))
     `(magit-reflog-amend ((t (:foreground ,purple-2-6))))
     `(magit-reflog-checkout ((t (:foreground ,blue-2-6))))
     `(magit-reflog-cherry-pick ((t (:foreground ,green-2-6))))
     `(magit-reflog-commit ((t (:foreground ,green-2-6))))
     `(magit-reflog-merge ((t (:foreground ,green-2-6))))
     `(magit-reflog-other ((t (:foreground ,cyan-2-6))))
     `(magit-reflog-rebase ((t (:foreground ,purple-2-6))))
     `(magit-reflog-remote ((t (:foreground ,cyan-2-6))))
     `(magit-reflog-reset ((t (:foreground ,red-2-6))))
     `(company-scrollbar-bg ((t (:background ,brown-2))))
     `(company-scrollbar-fg ((t (:background ,brown-4))))
     `(company-tooltip ((t (:background ,grey-9-2 :foreground ,default-fg))))
     `(company-tooltip-common ((t :foreground ,red-2-6)))
     '(company-tooltip-common-selection ((t (:inherit company-tooltip-common))))
     `(company-tooltip-annotation ((t (:foreground ,brown-2-6))))
     `(company-tooltip-selection ((t (:background ,blue-grey-7-1 :foreground ,default-fg))))
     `(avy-lead-face ((t (:background ,blue-grey-6-2 :foreground ,grey-2-6))))
     '(avy-lead-face-0 ((t (:inherit (avy-lead-face)))))
     '(avy-lead-face-1 ((t (:inherit (avy-lead-face)))))
     '(avy-lead-face-2 ((t (:inherit (avy-lead-face)))))
     '(aw-leading-char-face ((t (:height 2.0 :inherit (avy-lead-face)))))
     `(aw-background-face ((t (:foreground ,grey-6-4))))
     `(error ((t (:foreground ,red-4 :weight bold))))
     `(warning ((t (:foreground ,orange-2-6 :weight bold))))
     `(success ((t (:foreground ,green-2-6 :weight bold))))
     '(compilation-mode-line-exit ((t (:inherit (compilation-info)))))
     `(compilation-mode-line-run ((t (:foreground ,orange-2-8 :weight bold))))
     `(flymake-error ((((supports :underline (:style wave))) (:underline (:color ,red-4 :style wave))) (t (:inherit (error)))))
     `(flymake-warning ((((supports :underline (:style wave))) (:underline (:color ,cyan-2-6 :style wave))) (t (:inherit (warning)))))
     `(flycheck-error ((((supports :underline (:style wave))) (:underline (:color ,red-4 :style wave))) (t (:inherit (error) :underline (:color foreground-color :style line)))))
     `(flycheck-warning ((((supports :underline (:style wave))) (:underline (:color ,orange-2-6 :style wave))) (t (:inherit (warning) :underline (:color foreground-color :style line)))))
     `(flycheck-info ((((supports :underline (:style wave))) (:underline (:color ,green-2-6 :style wave))) (t (:inherit (success) :underline (:color foreground-color :style line))))))
    (custom-theme-set-variables
     theme
     `(ansi-color-names-vector [,grey-9 ,red-2-6 ,yellow-2-6 ,blue-2-6 ,purple-2-6 ,cyan-2-6 ,grey-0])
     `(rustic-ansi-faces [,grey-9 ,red-2-6 ,yellow-2-6 ,blue-2-6 ,purple-2-6 ,cyan-2-6 ,grey-0]))))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
		  (file-name-as-directory (file-name-directory load-file-name))))

(provide 'lupan-themes)
