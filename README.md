# rails_app_server_cookbooks

## what is this
this is usual rails app-server and CI server cookbooks for AWS opsworks.

## how to use

for app servers
- Setup
  * selinux::disabled
  * git
  * yum-epel
  * nginx
  * nodejs
  * ruby-env
  * imagemagick
  * mysql::client
  * codedeploy
 
- Configure
  * user
  * nginx-conf
  * app_dir
  
```
{ "app": {
  "name": "app_name"
  },
  "user": "deploy",
  "ruby-env": {
    "user": "deploy",
    "group": "deploy",
    "version": "2.2.2",
    "rbenv_url": "https://github.com/sstephenson/rbenv",
    "ruby-build_url": "https://github.com/sstephenson/ruby-build" 
  },
  "codedeploy":{
    "region": "ap-northeast-1"
  }
}
```

for CI server(Jenkins)
- Setup
  * git
  * jenkins::java
  * jenkins::master

- Configure
  * jenkins_plugins
 
```
{"jenkins_plugins": [
	github,
	git,
	github-api,
	git-client,
	run-condition,
	run-condition-extras,
	flexible-publish,
	conditional-buildstep,
	build-keeper-plugin,
	parameterized-trigger,
  role-strategy
]
}

```
