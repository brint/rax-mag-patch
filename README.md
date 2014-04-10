magento-ce-varnish-18 Cookbook
==============================
This cookbook is to install the work around for using the [Magento PageCache][]
plugin where support for 1.8.0.0+ is not offered. More details regarding the
issue can be found [here][].

This cookbook should only be used until the community version is updated, then
this cookbook should be removed from your run list. This should be run after
Magento has been installed.

Requirements
------------
* Chef 11+
* Cookbooks:
  * `apt`
  * `git`
  * `magento`
  * `varnish`


Attributes
----------
#### magento-ce-varnish-18::default
Key|Type|Description|Default
-|-|-|-
`default['rax_mag_patch']['dest_dir']`|String|Path to Magento installation|`node['magento']['dir']`


Usage
-----
#### magento-ce-varnish-18::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `magento-ce-varnish-18` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[magento-ce-varnish-18]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Brint O'Hearn (<brint.ohearn@rackspace.com>)

[Magento PageCache]: https://github.com/PHOENIX-MEDIA/Magento-PageCache-powered-by-Varnish
[here]: https://github.com/PHOENIX-MEDIA/Magento-PageCache-powered-by-Varnish/issues/6
