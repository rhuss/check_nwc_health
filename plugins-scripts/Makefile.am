## Process this file with automake to produce Makefile.in

SED=/bin/sed
GREP=/bin/grep
CAT=/bin/cat
ECHO=/bin/echo

SUFFIXES = .pl .pm .sh

VPATH=$(top_srcdir) $(top_srcdir)/plugins-scripts $(top_srcdir)/plugins-scripts/t

libexec_SCRIPTS=check_nwc_health
MY_MODULES=
EXTRA_MODULES=\
  Nagios/MiniPlugin.pm \
  UPNP/AVM/FritzBox7390/Components/InterfaceSubsystem.pm \
  UPNP/AVM/FritzBox7390/Components/SmartHomeSubsystem.pm \
  UPNP/AVM/FritzBox7390.pm \
  UPNP/AVM.pm \
  UPNP.pm \
  Server/Linux.pm \
  NWC/CiscoIOS/Component/CpuSubsystem.pm \
  NWC/CiscoIOS/Component/MemSubsystem.pm \
  NWC/CiscoIOS/Component/EnvironmentalSubsystem.pm \
  NWC/CiscoIOS/Component/TemperatureSubsystem.pm \
  NWC/CiscoIOS/Component/SupplySubsystem.pm \
  NWC/CiscoIOS/Component/VoltageSubsystem.pm \
  NWC/CiscoIOS/Component/FanSubsystem.pm \
  NWC/CiscoIOS/Component/ConnectionSubsystem.pm \
  NWC/CiscoIOS.pm \
  NWC/CiscoNXOS/Component/CpuSubsystem.pm \
  NWC/CiscoNXOS/Component/MemSubsystem.pm \
  NWC/CiscoNXOS/Component/EnvironmentalSubsystem.pm \
  NWC/CiscoNXOS/Component/SensorSubsystem.pm \
  NWC/CiscoNXOS.pm \
  NWC/CiscoWLC/Component/MemSubsystem.pm \
  NWC/CiscoWLC/Component/CpuSubsystem.pm \
  NWC/CiscoWLC/Component/EnvironmentalSubsystem.pm \
  NWC/CiscoWLC/Component/WlanSubsystem.pm \
  NWC/CiscoWLC.pm \
  NWC/CiscoAsyncOS/Component/KeySubsystem.pm \
  NWC/CiscoAsyncOS/Component/MemSubsystem.pm \
  NWC/CiscoAsyncOS/Component/CpuSubsystem.pm \
  NWC/CiscoAsyncOS/Component/TemperatureSubsystem.pm \
  NWC/CiscoAsyncOS/Component/SupplySubsystem.pm \
  NWC/CiscoAsyncOS/Component/FanSubsystem.pm \
  NWC/CiscoAsyncOS/Component/RaidSubsystem.pm \
  NWC/CiscoAsyncOS/Component/EnvironmentalSubsystem.pm \
  NWC/CiscoAsyncOS.pm \
  NWC/Cisco.pm \
  NWC/Nortel.pm \
  NWC/Juniper/NetScreen/Component/CpuSubsystem.pm \
  NWC/Juniper/NetScreen/Component/MemSubsystem.pm \
  NWC/Juniper/NetScreen.pm \
  NWC/Juniper/IVE/Component/MemSubsystem.pm \
  NWC/Juniper/IVE/Component/CpuSubsystem.pm \
  NWC/Juniper/IVE/Component/EnvironmentalSubsystem.pm \
  NWC/Juniper/IVE/Component/DiskSubsystem.pm \
  NWC/Juniper/IVE/Component/UserSubsystem.pm \
  NWC/Juniper/IVE.pm \
  NWC/Juniper.pm \
  NWC/AlliedTelesyn.pm \
  NWC/FabOS/Component/MemSubsystem.pm \
  NWC/FabOS/Component/CpuSubsystem.pm \
  NWC/FabOS/Component/EnvironmentalSubsystem.pm \
  NWC/FabOS/Component/SensorSubsystem.pm \
  NWC/FabOS.pm \
  NWC/HP/Procurve/Component/MemSubsystem.pm \
  NWC/HP/Procurve/Component/CpuSubsystem.pm \
  NWC/HP/Procurve/Component/EnvironmentalSubsystem.pm \
  NWC/HP/Procurve/Component/SensorSubsystem.pm \
  NWC/HP/Procurve.pm \
  NWC/HP.pm \
  NWC/MEOS.pm \
  NWC/Brocade.pm \
  NWC/SecureOS.pm \
  NWC/HSRP/Component/HSRPSubsystem.pm \
  NWC/HSRP.pm \
  NWC/IFMIB/Component/LinkAggregation.pm \
  NWC/IFMIB/Component/InterfaceSubsystem.pm \
  NWC/IFMIB.pm \
  NWC/BGP/Component/PeerSubsystem.pm \
  NWC/BGP.pm \
  NWC/FCMGMT/Component/EnvironmentalSubsystem.pm \
  NWC/FCMGMT/Component/SensorSubsystem.pm \
  NWC/FCMGMT.pm \
  NWC/FCEOS/Components/EnvironmentalSubsystem.pm \
  NWC/FCEOS/Components/FruSubsystem.pm \
  NWC/FCEOS.pm \
  NWC/UCDMIB/Components/MemSubsystem.pm \
  NWC/UCDMIB/Components/CpuSubsystem.pm \
  NWC/UCDMIB.pm \
  NWC/F5/F5BIGIP/Component/LTM.pm \
  NWC/F5/F5BIGIP/Component/MemSubsystem.pm \
  NWC/F5/F5BIGIP/Component/PowersupplySubsystem.pm \
  NWC/F5/F5BIGIP/Component/TemperatureSubsystem.pm \
  NWC/F5/F5BIGIP/Component/CpuSubsystem.pm \
  NWC/F5/F5BIGIP/Component/FanSubsystem.pm \
  NWC/F5/F5BIGIP/Component/EnvironmentalSubsystem.pm \
  NWC/F5/F5BIGIP.pm \
  NWC/F5.pm \
  NWC/CheckPoint/Firewall1/Component/MngmtSubsystem.pm \
  NWC/CheckPoint/Firewall1/Component/SvnSubsystem.pm \
  NWC/CheckPoint/Firewall1/Component/FwSubsystem.pm \
  NWC/CheckPoint/Firewall1/Component/HaSubsystem.pm \
  NWC/CheckPoint/Firewall1/Component/CpuSubsystem.pm \
  NWC/CheckPoint/Firewall1/Component/MemSubsystem.pm \
  NWC/CheckPoint/Firewall1.pm \
  NWC/CheckPoint.pm \
  NWC/SGOS/Component/MemSubsystem.pm \
  NWC/SGOS/Component/CpuSubsystem.pm \
  NWC/SGOS/Component/EnvironmentalSubsystem.pm \
  NWC/SGOS/Component/SensorSubsystem.pm \
  NWC/SGOS/Component/DiskSubsystem.pm \
  NWC/SGOS/Component/SecuritySubsystem.pm \
  NWC/SGOS.pm \
  NWC/AVOS/Component/KeySubsystem.pm \
  NWC/AVOS/Component/SecuritySubsystem.pm \
  NWC/AVOS/Component/ConnectionSubsystem.pm \
  NWC/AVOS/Component/MemSubsystem.pm \
  NWC/AVOS/Component/CpuSubsystem.pm \
  NWC/AVOS.pm \
  NWC/Foundry/Component/MemSubsystem.pm \
  NWC/Foundry/Component/CpuSubsystem.pm \
  NWC/Foundry/Component/EnvironmentalSubsystem.pm \
  NWC/Foundry/Component/PowersupplySubsystem.pm \
  NWC/Foundry/Component/FanSubsystem.pm \
  NWC/Foundry/Component/TemperatureSubsystem.pm \
  NWC/Foundry.pm \
  NWC/Bluecoat.pm \
  NWC/MibsAndOids.pm \
  NWC/Generic.pm \
  NWC/Device.pm
EXTRA_DIST=check_nwc_health.pl $(EXTRA_MODULES)

CLEANFILES=$(libexec_SCRIPTS)

AM_INSTALL_PROGRAM_FLAGS=@INSTALL_OPTS@

.pm :
	$(AWK) -f ./subst $< > $@
	chmod +x $@

.pl :
	$(AWK) -f ./subst $< > $@
	chmod +x $@

.sh :
	$(AWK) -f ./subst $< > $@
	chmod +x $@

$(libexec_SCRIPTS) : $(EXTRA_DIST)
	$(ECHO) "#! #PERL# -w" | $(AWK) -f ./subst > $@
	$(ECHO) >> $@
	for m in ${EXTRA_MODULES}; do \
		$(SED) -e 's/^1;//g' < $$m | $(AWK) -f ./subst | $(GREP) -v "use Nagios::Plugin" >> $@; \
	done
	$(ECHO) "package main;" >> $@
	$(CAT) check_nwc_health.pl | $(AWK) -f ./subst >> $@
	chmod +x $@
#| $(GREP) -v "use Nagios" >> $@;

