berkshelf-gitpattern
====================

Simple helper for berkshelf to add locations with template.

Example Berksfile:

    require 'berkshelf/gitpattern'
    
    add_location(:gitpattern, pattern:
    'git@some.private.git.com/cookbooks/{NAME}.git')
    site :opscode
    
    cookbook 'myprivatecookbook'
    cookbook 'apt'
    
`myprivatecookbook` would be fetched via git at the location
`git@some.private.git.com/cookbooks/myprivatecookbook.git`  This
location (with the substitution) would be checked first for every
cookbook. In this example, assuming you do not have the `apt` cookbook in
your privaterepo, the `apt` cookbook would be fetched from the
community site.

   
