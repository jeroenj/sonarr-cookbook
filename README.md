Sonarr Cookbook
===============
Installs [Sonarr](https://sonarr.tv) and its required dependencies.

Attributes
----------
#### sonarr::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['sonarr']['user']</tt></td>
    <td>String</td>
    <td>User which sonarr will be ran as</td>
    <td>sonarr</td>
  </tr>
  <tr>
    <td><tt>['sonarr']['group']</tt></td>
    <td>String</td>
    <td>Group which owns the sonarr installation</td>
    <td>sonarr</td>
  </tr>
  <tr>
    <td><tt>['sonarr']['home']</tt></td>
    <td>String</td>
    <td>Directory where sonarr will place its `.config` directory</td>
    <td>/home/sonarr</td>
  </tr>
  <tr>
    <td><tt>['sonarr']['settings']</tt></td>
    <td>Hash</td>
    <td>Configuration options. Feel free to create a pull request for more custom options.</td>
    <td>
      <ul>
        <li><tt>AnalyticsEnabled: True</tt></li>
        <li><tt>ApiKey: changeme</tt></li>
        <li><tt>AuthenticationMethod: None</tt></li>
        <li><tt>BindAddress: *</tt></li>
        <li><tt>Branch: master</tt></li>
        <li><tt>EnableSsl: False</tt></li>
        <li><tt>LaunchBrowser: True</tt></li>
        <li><tt>LogLevel: Info</tt></li>
        <li><tt>Port: 8989</tt></li>
        <li><tt>SslCertHash: nil</tt></li>
        <li><tt>SslPort: 9898</tt></li>
        <li><tt>UpdateMechanism: BuiltIn</tt></li>
        <li><tt>UrlBase: nil</tt></li>
      </ul>
      Empty settings should be defined as a set of quotes. e.g. `'""'`
    </td>
  </tr>
</table>

Usage
-----
#### sonarr::default

It installs Sonarr using the official apt repository.

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github
