# README

## OUTSTANDING TODOS

- understanding image hosting via Heroku and how to improve image load times
- proper secret API key management
- roll/update secret API keys for Sendgrid and Bucketeer
- confirm that email is still working

## Deployment to Heroku

The apps are configured under the team name `athira`. The two apps are named for their respective environments:
- `athira-solutions` (production)
- `athira-solutions-staging` (staging)

The underlying applications are configurable and respond to commands using this template:
- `heroku run <command> -a <athira-solutions|athira-solutions-staging>`
- e.g. `heroku run rails db:migrate -a athira-solutions-staging`

I have been taking the following steps to deply the app, *first to staging* and then to production:
- (local) `rake assets:precompile`
- push static assets files to remote git repository
- this should kick off an automatic build and deployment phase
- (remote) `heroku run rails db:migrate -a <athira-solutions|athira-solutions-staging>` (only if db schema was updated)
- (remote) `heroku run rails db:seed -a <athira-solutions|athira-solutions-staging>` (only if seeding initial data or modifying seeds.rb file)

## Non-Technical Content Administration

The app's content can be administered under the `/admin` subdomain.
The underlying administrative Gem is ActiveAdmin.

Some of the admin save/update/delete paths may be incomplete and throw errors on production.
These paths are unexercises because lately the site has been fully administered using seeds.rb, and the content is effectively static / rarely updated by site administators.

## Debugging and Development Tips

This was originally a Rails 4 app and has undergone significant remodelling, but should be viewed a small, brittle legacy app that is doing its best to keep up with the times. The content of this website/application has been largely static for years, and much of the complexity anticipated by (especially the frontend architecture) never came to pass.

The production and staging environments are easy enough to debug live. Use this command to tail a live stream of logs in a given environment:
- `heroku logs -t -a <athira-solutions|athira-solutions-staging>`

Common sources of trouble for the production application include:
- developer forgetting to precompile assets before pushing to remote
- developer forgetting to migrate the database after pushing db schema changes to remote

Common sources of trouble for the development application include:
- developer forgetting to run rails and yarn setup commands
- slight lag in updates to UI content when actively developing in the browser window (will resolve on 1-2 additional browser refreshes)
- general intercompatability of Gems and yarn packages, some of which are showing their age or no longer maintained

Debugging of React and JavaScript issue should be done in the browser console window. Please note that issues generated at the binding layer between Rails and React (namely, the Redux store) are not actively logged and may fail silently. So far, this has never been an issue. If you are seeing any confusing errors with unknown `props` or `props` with unexpected contenet formatting, I suggest installing a logging utility for Redux in order to monitor the health of containers/reduces and `props` content.

## Sensitive Data  Managemenet

Encrypted keys and the like are stored locally using this setup:
https://itnext.io/environment-variables-in-ruby-on-rails-17e4934cfd71

Heroku keys are stored at the same environment variables. Within the Heroku environments, customization of environment variables can be accomplised by following this guide:
https://devcenter.heroku.com/articles/config-vars

Some of the environment variables are set automatically when configuring a Heroku add-on or rolling the keys via the add-on service UI online. In such cases, the environment variables will be automatically reset, but it may be necessary to reseed the database using the seeds.rb file in order to have the desired attachmened stored with the correct credentials. After rolling the keys, redeploy the rails app and then run:

`heroku run rails db:seed -a <athira-solutions|athira-solutions-staging>`

## Active Storage Configurations

Active  Storage is used for direct storage and upload of images for the site. This configuration guide was used to set it up:
https://devcenter.heroku.com/articles/active-storage-on-heroku

The active storage keys required for S3 service are automatically set based on the Bucketeer configurations in the Heroku app environments (athira-solutions and athira-solution-staging). Local environment variables are stored using the set-up linked in the Sensitive Data Management section. Within the Heroku environments, customization of S3 service environment variables can be accomplised by following this guide:
https://devcenter.heroku.com/articles/config-vars
