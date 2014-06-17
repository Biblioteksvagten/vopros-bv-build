; Make file for building Biblioteksvagten Vopros installation.

api = 2
core = 7.x


;;; Core

projects[drupal] = drupal
projects[drupal][version] = 7.26
; githubusercontent seems to cache the file from the branch, so we
; point at a specific revision.
projects[drupal][patch][] = https://raw.githubusercontent.com/Biblioteksvagten/Vopros-install/9b9ef1fa96137c013defaea6e05fddbed0bb4692/bibv.patch


projects[vopros][type] = profile
projects[vopros][download][type] = git
projects[vopros][download][url] = https://github.com/DBCDK/Vopros-install.git


;;; Biblioteksvagten specific additions

projects[bv_schema][type] = module
projects[bv_schema][download][type] = git
projects[bv_schema][download][url] = https://github.com/Biblioteksvagten/bv_schema.git


projects[bv_vopros][type] = module
projects[bv_vopros][download][type] = git
projects[bv_vopros][download][url] = https://github.com/Biblioteksvagten/bv_vopros.git


projects[bv_vopros_services][type] = module
projects[bv_vopros_services][download][type] = git
projects[bv_vopros_services][download][url] = https://github.com/Biblioteksvagten/bv_vopros_services.git


projects[finurlig_widget][type] = module
projects[finurlig_widget][download][type] = git
projects[finurlig_widget][download][tag] = 7.x-1.3
projects[finurlig_widget][download][url] = https://github.com/aakb/finurlig_widget.git


projects[vopros_embed][type] = module
projects[vopros_embed][download][type] = git
projects[vopros_embed][download][url] = https://github.com/Biblioteksvagten/vopros_embed.git


;;; Custom modules

projects[devel][version] = 1.2


projects[flood_control][version] = 1.0


projects[keyboard_shortcut][version] = 1.2


projects[l10n_client][version] = 1.1


projects[l10n_update][version] = 1.0-beta3


projects[media][version] = 1.4


projects[scheduler][version] = 1.0


projects[transliteration][version] = 3.0


projects[wysiwyg][version] = 2.1


projects[environment_indicator][version] = 2.2


;;; Custom libraries

libraries[ckeditor][download][type] = get
libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.2/ckeditor_3.6.2.tar.gz
libraries[ckeditor][directory_name] = ckeditor
libraries[ckeditor][destination] = libraries


libraries[drush_bv_vopros][download][type] = get
libraries[drush_bv_vopros][download][url] = https://raw.githubusercontent.com/Biblioteksvagten/vopros-bv-build/master/bv_vopros.drush.inc
libraries[drush_bv_vopros][destination] = drush
