FROM nickzurich/composer-prestissimo:latest

ARG GITHUB_TOKEN
RUN composer config --global github-oauth.github.com $GITHUB_TOKEN && \
    composer config --global repositories.composer-update-request vcs https://github.com/takoba/composer-update-request
