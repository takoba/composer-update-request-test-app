FROM nickzurich/composer-prestissimo:latest

COPY . /github/workspace

RUN composer self-update

WORKDIR /github/workspace
ARG GITHUB_TOKEN
RUN git config --global user.name "takoba/composer-update-request-test-app/local" && \
    git config --global user.email "plane25+takoba-composer-update-request-test-app-local@gmail.com" && \
    composer global config github-oauth.github.com $GITHUB_TOKEN && \
    composer global config repositories.composer-update-request vcs https://github.com/takoba/composer-update-request
