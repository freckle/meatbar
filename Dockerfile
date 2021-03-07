FROM haskell:8.8.4
WORKDIR /opt/meatbar
COPY ["app", "./app"]
COPY ["src", "./src"]
COPY ["webapp", "./webapp"]
COPY ["README.md", "stack.yaml", "package.yaml", "."]
RUN ["stack", "build"]
COPY . .
ENTRYPOINT ["stack"]
CMD ["run"]
