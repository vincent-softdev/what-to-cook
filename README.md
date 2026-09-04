# what_to_cook_app

I am the chef at home, and I sometimes find it difficult to decide what meal my wife wants to eat. Hence, I created this app for my wife to pick the food she wants me to cook. Based on her choice, I can then find a suitable recipe and estimate the cost of the meal.

Feel free to use this repo if you'd like to use the app as well.

## Getting Started

## CI/CD

GitHub Actions runs on pushes to `main` and `feature/**`, and on pull requests
targeting `main`. It checks formatting, analyzes the Dart code, runs the Flutter
tests, and builds a release version of the web app.

Successful pushes to `main` are deployed automatically to GitHub Pages.

To enable the deployment in the repository, open **Settings → Pages** and set
the source to **GitHub Actions**. The workflow uses the repository name as the
web app base path, so the deployed URL will be:

`https://<your-github-username>.github.io/<repository-name>/`
