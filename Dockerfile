FROM haskell:8.8.4
WORKDIR /opt/meatbar
COPY ["app", "./app"]
COPY ["src", "./src"]
COPY ["webapp", "./webapp"]
COPY ["README.md", "stack.yaml", "package.yaml", "."]
RUN ["stack", "build"]
COPY . .
EXPOSE 8080
ENTRYPOINT ["stack"]
CMD ["run"]
