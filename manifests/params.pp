class ntp::params (
)
{
    $ensure             = 'present'
    $service_ensure     = 'running'
    $service_enable     = true
    $service_hasstatus  = true
    $service_hasrestart = true
    $config_name        = 'ntp.conf'
    $config_file_mode   = '0644'
    $servers            = [ '0.centos.pool.ntp.org', '1.centos.pool.ntp.org' ]

    $service_name       = $facts['os']['family'] ? {
      'Debian' => 'ntp',
      default  => 'ntpd'
    }
}
