default[:sonarr][:user] = 'sonarr'
default[:sonarr][:group] = 'sonarr'
default[:sonarr][:home] = '/home/sonarr'

default[:sonarr][:apt][:uri] = 'http://apt.sonarr.tv/'

default[:sonarr][:settings] = {
  'AnalyticsEnabled' => 'True',
  'ApiKey' => 'changeme',
  'AuthenticationMethod' => 'None',
  'BindAddress' => '*',
  'Branch' => 'master',
  'EnableSsl' => 'False',
  'LaunchBrowser' => 'True',
  'LogLevel' => 'Info',
  'Port' => 8989,
  'SslCertHash' => nil,
  'SslPort' => 9898,
  'UpdateMechanism' => 'BuiltIn',
  'UrlBase' => nil,
}
