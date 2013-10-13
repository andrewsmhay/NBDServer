NBDServer Cookbook
===============
NBDServer (https://github.com/jeffbryner/NBDServer) is a Network Block Device Server for windows for performing read-only forensic artifact collection from a target Windows host. This cookbook installs and configures everything required to build your own NBDServer host.

Requirements
------------

#### operating system
- Ubuntu Server 12.04+

Usage
-----
#### NBDServer::default

Just include `NBDServer` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[NBDServer]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:
- Andrew Hay, Director of Applied Security Research, CloudPassage, Inc.

