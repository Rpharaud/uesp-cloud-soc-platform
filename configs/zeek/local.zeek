# UESP Zeek local configuration
#
# Purpose:
# Define local Zeek policy customizations for telemetry generation.

@load policy/tuning/json-logs.zeek
@load policy/protocols/conn/known-hosts.zeek
@load policy/protocols/conn/known-services.zeek
