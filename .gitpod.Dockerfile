FROM gitpod/workspace-full
RUN brew tap dart-lang/dart \
    && brew install dart \
    && dart pub global activate webdev