package NWC::Brocade;

use strict;

use constant { OK => 0, WARNING => 1, CRITICAL => 2, UNKNOWN => 3 };

our @ISA = qw(NWC::Device);

use constant trees => (
  '1.3.6.1.2.1',        # mib-2
  '1.3.6.1.4.1.289',    # mcData
  '1.3.6.1.4.1.333',    # cnt
  '1.3.6.1.4.1.1588',   # bcsi
  '1.3.6.1.4.1.1991',   # foundry
  '1.3.6.1.4.1.4369',   # nishan
);

sub init {
  my $self = shift;
  my %params = @_;
  $self->SUPER::init(%params);
  foreach ($self->get_snmp_table_objects(
      'ENTITY-MIB', 'entPhysicalTable')) {
    if ($_->{entPhysicalDescr} =~ /Brocade/) {
      $self->{productname} = "FabOS";
    }
  }
  my $swFirmwareVersion = $self->get_snmp_object('SW-MIB', 'swFirmwareVersion');
  if ($swFirmwareVersion && $swFirmwareVersion =~ /^v6/) {
    $self->{productname} = "FabOS"
  }
  if ($self->{productname} =~ /EMC\s*DS.*4700M/i) {
    bless $self, 'NWC::MEOS';
    $self->debug('using NWC::MEOS');
    $self->init();
  } elsif ($self->{productname} =~ /EMC\s*DS-24M2/i) {
    bless $self, 'NWC::MEOS';
    $self->debug('using NWC::MEOS');
    $self->init();
  } elsif ($self->{productname} =~ /FabOS/i) {
    bless $self, 'NWC::FabOS';
    $self->debug('using NWC::FabOS');
    $self->init();
  } elsif ($self->{productname} =~ /ICX6/i) {
    bless $self, 'NWC::Foundry';
    $self->debug('using NWC::Foundry');
    $self->init();
  }
}

