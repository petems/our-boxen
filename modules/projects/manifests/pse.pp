# Base things all PSE's need! :)
class projects::pse {

  class { 'vagrant':
    version => '1.6.5',
    completion => true,
  }

  vagrant::plugin { 'oscar':
    prefix => false,
  }

  vagrant::plugin { 'multiprovider-snap':}

  class { 'virtualbox':
    version => '4.3.14',
    patch_level => '95030'
  }

  class { 'vmware_fusion':}
  class { 'hipchat':}
  class { 'caffeine':}
  class { 'smcfancontrol':}
  class { 'viscosity':}

  if ($::memorysize_mb < '8192') {
    notify{"As a PSE, you'll probably need more than 8GB of Memory":}
    notify{"Open a support request to get 16GB ASAP!":}
  }
}