# ovh-deploy-hosting-action
An GitHub Action to deploy the contents of a repository to an OVH Hosting Plan (with SSH support)

## Example usage
```
on: [push]

jobs:
  deploy:
    runs-on: ubuntu-latest
    name: Deploy my nice code
    steps:
    - name: Deploy to OVH hosting
      uses: pitscher/ovh-deploy-hosting-action@v1
      env:
        OVH_HOSTING_USER: ${{ secrets.OVH_HOSTING_USER }}
        OVH_HOSTING_PASSWORD: ${{ secrets.OVH_HOSTING_PASSWORD }}
        OVH_HOSTING_DOMAIN: ssh.clusterXXX.hosting.ovh.net
        REPOSITORY_NAME: my-repo
        REPOSITORY_URL: https://github.com/me/my-repo.git
```