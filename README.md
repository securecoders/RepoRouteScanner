# RepoRouteScanner (RRS)
This is a simple script to run a series of SemGrep rules against a GitHub repository.  Results are output in JSON format. 

The rules are focused on finding exposed routes in a web application.

Currently the project only supports NodeJS / ExpressJS applications but the goal is to support as many popular frameworks as possible.

## Usage
First, install SemGrep

```bash
pip install semgrep
```

Then, run the script

```bash
./repo_route_scanner <repo_path> <output_path>
```

## About This Project
This project was created to provide input for https://gitatlas.com by SecureCoders (https://securecoders.com)