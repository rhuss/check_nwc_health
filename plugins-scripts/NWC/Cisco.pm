package NWC::Cisco;

use strict;

use constant { OK => 0, WARNING => 1, CRITICAL => 2, UNKNOWN => 3 };

our @ISA = qw(NWC::Device);

use constant trees => (
  '1.3.6.1.2.1',        # mib-2
  '1.3.6.1.4.1.9',      # cisco
  '1.3.6.1.4.1.9.1',      # ciscoProducts
  '1.3.6.1.4.1.9.2',      # local
  '1.3.6.1.4.1.9.3',      # temporary
  '1.3.6.1.4.1.9.4',      # pakmon
  '1.3.6.1.4.1.9.5',      # workgroup
  '1.3.6.1.4.1.9.6',      # otherEnterprises
  '1.3.6.1.4.1.9.7',      # ciscoAgentCapability
  '1.3.6.1.4.1.9.8',      # ciscoConfig
  '1.3.6.1.4.1.9.9',      # ciscoMgmt
  '1.3.6.1.4.1.9.10',      # ciscoExperiment
  '1.3.6.1.4.1.9.11',      # ciscoAdmin
  '1.3.6.1.4.1.9.12',      # ciscoModules
  '1.3.6.1.4.1.9.13',      # lightstream
  '1.3.6.1.4.1.9.14',      # ciscoworks
  '1.3.6.1.4.1.9.15',      # newport
  '1.3.6.1.4.1.9.16',      # ciscoPartnerProducts
  '1.3.6.1.4.1.9.17',      # ciscoPolicy
  '1.3.6.1.4.1.9.18',      # ciscoPolicyAuto
  '1.3.6.1.4.1.9.19',      # ciscoDomains
  '1.3.6.1.4.1.14179.1',   # airespace-switching-mib
  '1.3.6.1.4.1.14179.2',   # airespace-wireless-mib
);

sub init {
  my $self = shift;
  my %params = @_;
  $self->SUPER::init(%params);
  if ($self->{productname} =~ /Cisco NX-OS/i) {
    bless $self, 'NWC::CiscoNXOS';
    $self->debug('using NWC::CiscoNXOS');
  } elsif ($self->{productname} =~ /Cisco Controller/i) {
    bless $self, 'NWC::CiscoWLC';
    $self->debug('using NWC::WLC');
  } elsif ($self->{productname} =~ /Cisco.*(IronPort|AsyncOS)/i) {
    bless $self, 'NWC::CiscoAsyncOS';
    $self->debug('using NWC::AsyncOS');
  } elsif ($self->{productname} =~ /Cisco/i) {
    bless $self, 'NWC::CiscoIOS';
    $self->debug('using NWC::CiscoIOS');
  } elsif ($self->{productname} =~ /Fujitsu Intelligent Blade Panel 30\/12/i) {
    bless $self, 'NWC::CiscoIOS';
    $self->debug('using NWC::CiscoIOS');
  }
  $self->init();
}

