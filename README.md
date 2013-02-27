# sfrdc

This is the Ruby on Rails website for the SF Research & Development Center. It allows non-programmers to administer the content. Its about to get a serious functionality overhaul!

## Todos 
* Considering impact of changes to mobile version of the website
* Further testing of crop feature
* Decouple departments from code (department model)
* Create default avatar images for interns & staff
* Link routes and uploaded files to CMS
* PageContent controller using mongoid for dynamic pages set by admins
* Text-editor for admins
* Installation of new software on production server
* Configuration of new setup on production server
* Update the 404 page
* Redirect sfresearchcenter.com

## Notes
* Generated js/css files won't be served by rails in production (b/c static)
* Need ImageMagick(images) and GhostScript(pdfs) installed
* Need to add default_url_options for production (mailer)
