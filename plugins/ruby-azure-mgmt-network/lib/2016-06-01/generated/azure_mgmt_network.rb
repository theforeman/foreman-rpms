# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2016-06-01/generated/azure_mgmt_network/module_definition'
require 'ms_rest_azure'

module Azure::Network::Mgmt::V2016_06_01
  autoload :ApplicationGateways,                                '2016-06-01/generated/azure_mgmt_network/application_gateways.rb'
  autoload :ExpressRouteCircuitAuthorizations,                  '2016-06-01/generated/azure_mgmt_network/express_route_circuit_authorizations.rb'
  autoload :ExpressRouteCircuitPeerings,                        '2016-06-01/generated/azure_mgmt_network/express_route_circuit_peerings.rb'
  autoload :ExpressRouteCircuits,                               '2016-06-01/generated/azure_mgmt_network/express_route_circuits.rb'
  autoload :ExpressRouteServiceProviders,                       '2016-06-01/generated/azure_mgmt_network/express_route_service_providers.rb'
  autoload :LoadBalancers,                                      '2016-06-01/generated/azure_mgmt_network/load_balancers.rb'
  autoload :LocalNetworkGateways,                               '2016-06-01/generated/azure_mgmt_network/local_network_gateways.rb'
  autoload :NetworkInterfaces,                                  '2016-06-01/generated/azure_mgmt_network/network_interfaces.rb'
  autoload :NetworkSecurityGroups,                              '2016-06-01/generated/azure_mgmt_network/network_security_groups.rb'
  autoload :PublicIPAddresses,                                  '2016-06-01/generated/azure_mgmt_network/public_ipaddresses.rb'
  autoload :RouteTables,                                        '2016-06-01/generated/azure_mgmt_network/route_tables.rb'
  autoload :Routes,                                             '2016-06-01/generated/azure_mgmt_network/routes.rb'
  autoload :SecurityRules,                                      '2016-06-01/generated/azure_mgmt_network/security_rules.rb'
  autoload :Subnets,                                            '2016-06-01/generated/azure_mgmt_network/subnets.rb'
  autoload :VirtualNetworkPeerings,                             '2016-06-01/generated/azure_mgmt_network/virtual_network_peerings.rb'
  autoload :Usages,                                             '2016-06-01/generated/azure_mgmt_network/usages.rb'
  autoload :VirtualNetworkGatewayConnections,                   '2016-06-01/generated/azure_mgmt_network/virtual_network_gateway_connections.rb'
  autoload :VirtualNetworkGateways,                             '2016-06-01/generated/azure_mgmt_network/virtual_network_gateways.rb'
  autoload :VirtualNetworks,                                    '2016-06-01/generated/azure_mgmt_network/virtual_networks.rb'
  autoload :NetworkManagementClient,                            '2016-06-01/generated/azure_mgmt_network/network_management_client.rb'

  module Models
    autoload :ExpressRouteCircuitsRoutesTableListResult,          '2016-06-01/generated/azure_mgmt_network/models/express_route_circuits_routes_table_list_result.rb'
    autoload :ApplicationGatewaySku,                              '2016-06-01/generated/azure_mgmt_network/models/application_gateway_sku.rb'
    autoload :ExpressRouteCircuitRoutesTableSummary,              '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_routes_table_summary.rb'
    autoload :SubResource,                                        '2016-06-01/generated/azure_mgmt_network/models/sub_resource.rb'
    autoload :ExpressRouteCircuitsRoutesTableSummaryListResult,   '2016-06-01/generated/azure_mgmt_network/models/express_route_circuits_routes_table_summary_list_result.rb'
    autoload :EffectiveNetworkSecurityGroup,                      '2016-06-01/generated/azure_mgmt_network/models/effective_network_security_group.rb'
    autoload :AuthorizationListResult,                            '2016-06-01/generated/azure_mgmt_network/models/authorization_list_result.rb'
    autoload :VirtualNetworkGatewayConnectionListResult,          '2016-06-01/generated/azure_mgmt_network/models/virtual_network_gateway_connection_list_result.rb'
    autoload :ExpressRouteCircuitPeeringConfig,                   '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_peering_config.rb'
    autoload :ApplicationGatewayBackendAddress,                   '2016-06-01/generated/azure_mgmt_network/models/application_gateway_backend_address.rb'
    autoload :ExpressRouteCircuitStats,                           '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_stats.rb'
    autoload :VpnClientConfiguration,                             '2016-06-01/generated/azure_mgmt_network/models/vpn_client_configuration.rb'
    autoload :EffectiveNetworkSecurityRule,                       '2016-06-01/generated/azure_mgmt_network/models/effective_network_security_rule.rb'
    autoload :VirtualNetworkGatewayListResult,                    '2016-06-01/generated/azure_mgmt_network/models/virtual_network_gateway_list_result.rb'
    autoload :ExpressRouteCircuitPeeringListResult,               '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_peering_list_result.rb'
    autoload :VirtualNetworkGatewaySku,                           '2016-06-01/generated/azure_mgmt_network/models/virtual_network_gateway_sku.rb'
    autoload :ExpressRouteCircuitSku,                             '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_sku.rb'
    autoload :UsagesListResult,                                   '2016-06-01/generated/azure_mgmt_network/models/usages_list_result.rb'
    autoload :ExpressRouteCircuitServiceProviderProperties,       '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_service_provider_properties.rb'
    autoload :PublicIPAddressDnsSettings,                         '2016-06-01/generated/azure_mgmt_network/models/public_ipaddress_dns_settings.rb'
    autoload :EffectiveNetworkSecurityGroupAssociation,           '2016-06-01/generated/azure_mgmt_network/models/effective_network_security_group_association.rb'
    autoload :VirtualNetworkPeeringListResult,                    '2016-06-01/generated/azure_mgmt_network/models/virtual_network_peering_list_result.rb'
    autoload :ExpressRouteCircuitArpTable,                        '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_arp_table.rb'
    autoload :VirtualNetworkListResult,                           '2016-06-01/generated/azure_mgmt_network/models/virtual_network_list_result.rb'
    autoload :ExpressRouteCircuitsArpTableListResult,             '2016-06-01/generated/azure_mgmt_network/models/express_route_circuits_arp_table_list_result.rb'
    autoload :RouteListResult,                                    '2016-06-01/generated/azure_mgmt_network/models/route_list_result.rb'
    autoload :ExpressRouteCircuitRoutesTable,                     '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_routes_table.rb'
    autoload :EffectiveRouteListResult,                           '2016-06-01/generated/azure_mgmt_network/models/effective_route_list_result.rb'
    autoload :ApplicationGatewaySslPolicy,                        '2016-06-01/generated/azure_mgmt_network/models/application_gateway_ssl_policy.rb'
    autoload :PublicIPAddressListResult,                          '2016-06-01/generated/azure_mgmt_network/models/public_ipaddress_list_result.rb'
    autoload :NetworkSecurityGroupListResult,                     '2016-06-01/generated/azure_mgmt_network/models/network_security_group_list_result.rb'
    autoload :DnsNameAvailabilityResult,                          '2016-06-01/generated/azure_mgmt_network/models/dns_name_availability_result.rb'
    autoload :ApplicationGatewayListResult,                       '2016-06-01/generated/azure_mgmt_network/models/application_gateway_list_result.rb'
    autoload :NetworkInterfaceListResult,                         '2016-06-01/generated/azure_mgmt_network/models/network_interface_list_result.rb'
    autoload :VpnClientParameters,                                '2016-06-01/generated/azure_mgmt_network/models/vpn_client_parameters.rb'
    autoload :ExpressRouteCircuitListResult,                      '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_list_result.rb'
    autoload :ConnectionSharedKey,                                '2016-06-01/generated/azure_mgmt_network/models/connection_shared_key.rb'
    autoload :ExpressRouteServiceProviderBandwidthsOffered,       '2016-06-01/generated/azure_mgmt_network/models/express_route_service_provider_bandwidths_offered.rb'
    autoload :DhcpOptions,                                        '2016-06-01/generated/azure_mgmt_network/models/dhcp_options.rb'
    autoload :LocalNetworkGatewayListResult,                      '2016-06-01/generated/azure_mgmt_network/models/local_network_gateway_list_result.rb'
    autoload :UsageName,                                          '2016-06-01/generated/azure_mgmt_network/models/usage_name.rb'
    autoload :ExpressRouteServiceProviderListResult,              '2016-06-01/generated/azure_mgmt_network/models/express_route_service_provider_list_result.rb'
    autoload :SecurityRuleListResult,                             '2016-06-01/generated/azure_mgmt_network/models/security_rule_list_result.rb'
    autoload :EffectiveRoute,                                     '2016-06-01/generated/azure_mgmt_network/models/effective_route.rb'
    autoload :Resource,                                           '2016-06-01/generated/azure_mgmt_network/models/resource.rb'
    autoload :ConnectionSharedKeyResult,                          '2016-06-01/generated/azure_mgmt_network/models/connection_shared_key_result.rb'
    autoload :AzureAsyncOperationResult,                          '2016-06-01/generated/azure_mgmt_network/models/azure_async_operation_result.rb'
    autoload :NetworkInterfaceDnsSettings,                        '2016-06-01/generated/azure_mgmt_network/models/network_interface_dns_settings.rb'
    autoload :Error,                                              '2016-06-01/generated/azure_mgmt_network/models/error.rb'
    autoload :SubnetListResult,                                   '2016-06-01/generated/azure_mgmt_network/models/subnet_list_result.rb'
    autoload :ErrorDetails,                                       '2016-06-01/generated/azure_mgmt_network/models/error_details.rb'
    autoload :EffectiveNetworkSecurityGroupListResult,            '2016-06-01/generated/azure_mgmt_network/models/effective_network_security_group_list_result.rb'
    autoload :IPAddressAvailabilityResult,                        '2016-06-01/generated/azure_mgmt_network/models/ipaddress_availability_result.rb'
    autoload :Usage,                                              '2016-06-01/generated/azure_mgmt_network/models/usage.rb'
    autoload :LoadBalancerListResult,                             '2016-06-01/generated/azure_mgmt_network/models/load_balancer_list_result.rb'
    autoload :ConnectionResetSharedKey,                           '2016-06-01/generated/azure_mgmt_network/models/connection_reset_shared_key.rb'
    autoload :AddressSpace,                                       '2016-06-01/generated/azure_mgmt_network/models/address_space.rb'
    autoload :RouteTableListResult,                               '2016-06-01/generated/azure_mgmt_network/models/route_table_list_result.rb'
    autoload :BgpSettings,                                        '2016-06-01/generated/azure_mgmt_network/models/bgp_settings.rb'
    autoload :ApplicationGatewayIPConfiguration,                  '2016-06-01/generated/azure_mgmt_network/models/application_gateway_ipconfiguration.rb'
    autoload :ApplicationGatewayAuthenticationCertificate,        '2016-06-01/generated/azure_mgmt_network/models/application_gateway_authentication_certificate.rb'
    autoload :ApplicationGatewaySslCertificate,                   '2016-06-01/generated/azure_mgmt_network/models/application_gateway_ssl_certificate.rb'
    autoload :ApplicationGatewayFrontendIPConfiguration,          '2016-06-01/generated/azure_mgmt_network/models/application_gateway_frontend_ipconfiguration.rb'
    autoload :ApplicationGatewayFrontendPort,                     '2016-06-01/generated/azure_mgmt_network/models/application_gateway_frontend_port.rb'
    autoload :ApplicationGatewayBackendAddressPool,               '2016-06-01/generated/azure_mgmt_network/models/application_gateway_backend_address_pool.rb'
    autoload :BackendAddressPool,                                 '2016-06-01/generated/azure_mgmt_network/models/backend_address_pool.rb'
    autoload :InboundNatRule,                                     '2016-06-01/generated/azure_mgmt_network/models/inbound_nat_rule.rb'
    autoload :SecurityRule,                                       '2016-06-01/generated/azure_mgmt_network/models/security_rule.rb'
    autoload :NetworkInterface,                                   '2016-06-01/generated/azure_mgmt_network/models/network_interface.rb'
    autoload :NetworkSecurityGroup,                               '2016-06-01/generated/azure_mgmt_network/models/network_security_group.rb'
    autoload :Route,                                              '2016-06-01/generated/azure_mgmt_network/models/route.rb'
    autoload :RouteTable,                                         '2016-06-01/generated/azure_mgmt_network/models/route_table.rb'
    autoload :PublicIPAddress,                                    '2016-06-01/generated/azure_mgmt_network/models/public_ipaddress.rb'
    autoload :IPConfiguration,                                    '2016-06-01/generated/azure_mgmt_network/models/ipconfiguration.rb'
    autoload :ResourceNavigationLink,                             '2016-06-01/generated/azure_mgmt_network/models/resource_navigation_link.rb'
    autoload :Subnet,                                             '2016-06-01/generated/azure_mgmt_network/models/subnet.rb'
    autoload :NetworkInterfaceIPConfiguration,                    '2016-06-01/generated/azure_mgmt_network/models/network_interface_ipconfiguration.rb'
    autoload :ApplicationGatewayBackendHttpSettings,              '2016-06-01/generated/azure_mgmt_network/models/application_gateway_backend_http_settings.rb'
    autoload :ApplicationGatewayHttpListener,                     '2016-06-01/generated/azure_mgmt_network/models/application_gateway_http_listener.rb'
    autoload :ApplicationGatewayPathRule,                         '2016-06-01/generated/azure_mgmt_network/models/application_gateway_path_rule.rb'
    autoload :ApplicationGatewayProbe,                            '2016-06-01/generated/azure_mgmt_network/models/application_gateway_probe.rb'
    autoload :ApplicationGatewayRequestRoutingRule,               '2016-06-01/generated/azure_mgmt_network/models/application_gateway_request_routing_rule.rb'
    autoload :ApplicationGatewayUrlPathMap,                       '2016-06-01/generated/azure_mgmt_network/models/application_gateway_url_path_map.rb'
    autoload :ApplicationGateway,                                 '2016-06-01/generated/azure_mgmt_network/models/application_gateway.rb'
    autoload :ExpressRouteCircuitAuthorization,                   '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_authorization.rb'
    autoload :ExpressRouteCircuitPeering,                         '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_peering.rb'
    autoload :ExpressRouteCircuit,                                '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit.rb'
    autoload :ExpressRouteServiceProvider,                        '2016-06-01/generated/azure_mgmt_network/models/express_route_service_provider.rb'
    autoload :FrontendIPConfiguration,                            '2016-06-01/generated/azure_mgmt_network/models/frontend_ipconfiguration.rb'
    autoload :LoadBalancingRule,                                  '2016-06-01/generated/azure_mgmt_network/models/load_balancing_rule.rb'
    autoload :Probe,                                              '2016-06-01/generated/azure_mgmt_network/models/probe.rb'
    autoload :InboundNatPool,                                     '2016-06-01/generated/azure_mgmt_network/models/inbound_nat_pool.rb'
    autoload :OutboundNatRule,                                    '2016-06-01/generated/azure_mgmt_network/models/outbound_nat_rule.rb'
    autoload :LoadBalancer,                                       '2016-06-01/generated/azure_mgmt_network/models/load_balancer.rb'
    autoload :LocalNetworkGateway,                                '2016-06-01/generated/azure_mgmt_network/models/local_network_gateway.rb'
    autoload :VirtualNetworkPeering,                              '2016-06-01/generated/azure_mgmt_network/models/virtual_network_peering.rb'
    autoload :VirtualNetworkGatewayIPConfiguration,               '2016-06-01/generated/azure_mgmt_network/models/virtual_network_gateway_ipconfiguration.rb'
    autoload :VpnClientRootCertificate,                           '2016-06-01/generated/azure_mgmt_network/models/vpn_client_root_certificate.rb'
    autoload :VpnClientRevokedCertificate,                        '2016-06-01/generated/azure_mgmt_network/models/vpn_client_revoked_certificate.rb'
    autoload :VirtualNetworkGateway,                              '2016-06-01/generated/azure_mgmt_network/models/virtual_network_gateway.rb'
    autoload :VirtualNetworkGatewayConnection,                    '2016-06-01/generated/azure_mgmt_network/models/virtual_network_gateway_connection.rb'
    autoload :VirtualNetwork,                                     '2016-06-01/generated/azure_mgmt_network/models/virtual_network.rb'
    autoload :ApplicationGatewaySkuName,                          '2016-06-01/generated/azure_mgmt_network/models/application_gateway_sku_name.rb'
    autoload :ApplicationGatewayTier,                             '2016-06-01/generated/azure_mgmt_network/models/application_gateway_tier.rb'
    autoload :ApplicationGatewaySslProtocol,                      '2016-06-01/generated/azure_mgmt_network/models/application_gateway_ssl_protocol.rb'
    autoload :IPAllocationMethod,                                 '2016-06-01/generated/azure_mgmt_network/models/ipallocation_method.rb'
    autoload :TransportProtocol,                                  '2016-06-01/generated/azure_mgmt_network/models/transport_protocol.rb'
    autoload :IPVersion,                                          '2016-06-01/generated/azure_mgmt_network/models/ipversion.rb'
    autoload :SecurityRuleProtocol,                               '2016-06-01/generated/azure_mgmt_network/models/security_rule_protocol.rb'
    autoload :SecurityRuleAccess,                                 '2016-06-01/generated/azure_mgmt_network/models/security_rule_access.rb'
    autoload :SecurityRuleDirection,                              '2016-06-01/generated/azure_mgmt_network/models/security_rule_direction.rb'
    autoload :RouteNextHopType,                                   '2016-06-01/generated/azure_mgmt_network/models/route_next_hop_type.rb'
    autoload :ApplicationGatewayProtocol,                         '2016-06-01/generated/azure_mgmt_network/models/application_gateway_protocol.rb'
    autoload :ApplicationGatewayCookieBasedAffinity,              '2016-06-01/generated/azure_mgmt_network/models/application_gateway_cookie_based_affinity.rb'
    autoload :ApplicationGatewayRequestRoutingRuleType,           '2016-06-01/generated/azure_mgmt_network/models/application_gateway_request_routing_rule_type.rb'
    autoload :ApplicationGatewayOperationalState,                 '2016-06-01/generated/azure_mgmt_network/models/application_gateway_operational_state.rb'
    autoload :AuthorizationUseStatus,                             '2016-06-01/generated/azure_mgmt_network/models/authorization_use_status.rb'
    autoload :ExpressRouteCircuitPeeringAdvertisedPublicPrefixState, '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_peering_advertised_public_prefix_state.rb'
    autoload :ExpressRouteCircuitPeeringType,                     '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_peering_type.rb'
    autoload :ExpressRouteCircuitPeeringState,                    '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_peering_state.rb'
    autoload :ExpressRouteCircuitSkuTier,                         '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_sku_tier.rb'
    autoload :ExpressRouteCircuitSkuFamily,                       '2016-06-01/generated/azure_mgmt_network/models/express_route_circuit_sku_family.rb'
    autoload :ServiceProviderProvisioningState,                   '2016-06-01/generated/azure_mgmt_network/models/service_provider_provisioning_state.rb'
    autoload :LoadDistribution,                                   '2016-06-01/generated/azure_mgmt_network/models/load_distribution.rb'
    autoload :ProbeProtocol,                                      '2016-06-01/generated/azure_mgmt_network/models/probe_protocol.rb'
    autoload :EffectiveRouteSource,                               '2016-06-01/generated/azure_mgmt_network/models/effective_route_source.rb'
    autoload :EffectiveRouteState,                                '2016-06-01/generated/azure_mgmt_network/models/effective_route_state.rb'
    autoload :VirtualNetworkPeeringState,                         '2016-06-01/generated/azure_mgmt_network/models/virtual_network_peering_state.rb'
    autoload :VirtualNetworkGatewayType,                          '2016-06-01/generated/azure_mgmt_network/models/virtual_network_gateway_type.rb'
    autoload :VpnType,                                            '2016-06-01/generated/azure_mgmt_network/models/vpn_type.rb'
    autoload :VirtualNetworkGatewaySkuName,                       '2016-06-01/generated/azure_mgmt_network/models/virtual_network_gateway_sku_name.rb'
    autoload :VirtualNetworkGatewaySkuTier,                       '2016-06-01/generated/azure_mgmt_network/models/virtual_network_gateway_sku_tier.rb'
    autoload :ProcessorArchitecture,                              '2016-06-01/generated/azure_mgmt_network/models/processor_architecture.rb'
    autoload :VirtualNetworkGatewayConnectionType,                '2016-06-01/generated/azure_mgmt_network/models/virtual_network_gateway_connection_type.rb'
    autoload :VirtualNetworkGatewayConnectionStatus,              '2016-06-01/generated/azure_mgmt_network/models/virtual_network_gateway_connection_status.rb'
    autoload :NetworkOperationStatus,                             '2016-06-01/generated/azure_mgmt_network/models/network_operation_status.rb'
  end
end
