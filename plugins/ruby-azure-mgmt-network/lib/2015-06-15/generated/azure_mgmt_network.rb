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
require '2015-06-15/generated/azure_mgmt_network/module_definition'
require 'ms_rest_azure'

module Azure::Network::Mgmt::V2015_06_15
  autoload :ApplicationGateways,                                '2015-06-15/generated/azure_mgmt_network/application_gateways.rb'
  autoload :ExpressRouteCircuitAuthorizations,                  '2015-06-15/generated/azure_mgmt_network/express_route_circuit_authorizations.rb'
  autoload :ExpressRouteCircuitPeerings,                        '2015-06-15/generated/azure_mgmt_network/express_route_circuit_peerings.rb'
  autoload :ExpressRouteCircuits,                               '2015-06-15/generated/azure_mgmt_network/express_route_circuits.rb'
  autoload :ExpressRouteServiceProviders,                       '2015-06-15/generated/azure_mgmt_network/express_route_service_providers.rb'
  autoload :LoadBalancers,                                      '2015-06-15/generated/azure_mgmt_network/load_balancers.rb'
  autoload :NetworkInterfaces,                                  '2015-06-15/generated/azure_mgmt_network/network_interfaces.rb'
  autoload :NetworkSecurityGroups,                              '2015-06-15/generated/azure_mgmt_network/network_security_groups.rb'
  autoload :SecurityRules,                                      '2015-06-15/generated/azure_mgmt_network/security_rules.rb'
  autoload :PublicIPAddresses,                                  '2015-06-15/generated/azure_mgmt_network/public_ipaddresses.rb'
  autoload :RouteTables,                                        '2015-06-15/generated/azure_mgmt_network/route_tables.rb'
  autoload :Routes,                                             '2015-06-15/generated/azure_mgmt_network/routes.rb'
  autoload :Usages,                                             '2015-06-15/generated/azure_mgmt_network/usages.rb'
  autoload :VirtualNetworks,                                    '2015-06-15/generated/azure_mgmt_network/virtual_networks.rb'
  autoload :Subnets,                                            '2015-06-15/generated/azure_mgmt_network/subnets.rb'
  autoload :VirtualNetworkGateways,                             '2015-06-15/generated/azure_mgmt_network/virtual_network_gateways.rb'
  autoload :VirtualNetworkGatewayConnections,                   '2015-06-15/generated/azure_mgmt_network/virtual_network_gateway_connections.rb'
  autoload :LocalNetworkGateways,                               '2015-06-15/generated/azure_mgmt_network/local_network_gateways.rb'
  autoload :NetworkManagementClient,                            '2015-06-15/generated/azure_mgmt_network/network_management_client.rb'

  module Models
    autoload :ExpressRouteCircuitsStatsListResult,                '2015-06-15/generated/azure_mgmt_network/models/express_route_circuits_stats_list_result.rb'
    autoload :ExpressRouteCircuitListResult,                      '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_list_result.rb'
    autoload :SubResource,                                        '2015-06-15/generated/azure_mgmt_network/models/sub_resource.rb'
    autoload :ExpressRouteServiceProviderBandwidthsOffered,       '2015-06-15/generated/azure_mgmt_network/models/express_route_service_provider_bandwidths_offered.rb'
    autoload :PublicIPAddressListResult,                          '2015-06-15/generated/azure_mgmt_network/models/public_ipaddress_list_result.rb'
    autoload :ApplicationGatewayListResult,                       '2015-06-15/generated/azure_mgmt_network/models/application_gateway_list_result.rb'
    autoload :ApplicationGatewayBackendAddress,                   '2015-06-15/generated/azure_mgmt_network/models/application_gateway_backend_address.rb'
    autoload :Resource,                                           '2015-06-15/generated/azure_mgmt_network/models/resource.rb'
    autoload :ConnectionResetSharedKey,                           '2015-06-15/generated/azure_mgmt_network/models/connection_reset_shared_key.rb'
    autoload :DnsNameAvailabilityResult,                          '2015-06-15/generated/azure_mgmt_network/models/dns_name_availability_result.rb'
    autoload :NetworkInterfaceDnsSettings,                        '2015-06-15/generated/azure_mgmt_network/models/network_interface_dns_settings.rb'
    autoload :NetworkSecurityGroupListResult,                     '2015-06-15/generated/azure_mgmt_network/models/network_security_group_list_result.rb'
    autoload :VirtualNetworkGatewayListResult,                    '2015-06-15/generated/azure_mgmt_network/models/virtual_network_gateway_list_result.rb'
    autoload :AuthorizationListResult,                            '2015-06-15/generated/azure_mgmt_network/models/authorization_list_result.rb'
    autoload :BgpSettings,                                        '2015-06-15/generated/azure_mgmt_network/models/bgp_settings.rb'
    autoload :ExpressRouteCircuitPeeringConfig,                   '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_peering_config.rb'
    autoload :VpnClientConfiguration,                             '2015-06-15/generated/azure_mgmt_network/models/vpn_client_configuration.rb'
    autoload :ExpressRouteCircuitStats,                           '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_stats.rb'
    autoload :VirtualNetworkListResult,                           '2015-06-15/generated/azure_mgmt_network/models/virtual_network_list_result.rb'
    autoload :SecurityRuleListResult,                             '2015-06-15/generated/azure_mgmt_network/models/security_rule_list_result.rb'
    autoload :AddressSpace,                                       '2015-06-15/generated/azure_mgmt_network/models/address_space.rb'
    autoload :ExpressRouteCircuitPeeringListResult,               '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_peering_list_result.rb'
    autoload :UsagesListResult,                                   '2015-06-15/generated/azure_mgmt_network/models/usages_list_result.rb'
    autoload :ExpressRouteCircuitSku,                             '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_sku.rb'
    autoload :UsageName,                                          '2015-06-15/generated/azure_mgmt_network/models/usage_name.rb'
    autoload :ExpressRouteCircuitServiceProviderProperties,       '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_service_provider_properties.rb'
    autoload :RouteTableListResult,                               '2015-06-15/generated/azure_mgmt_network/models/route_table_list_result.rb'
    autoload :NetworkInterfaceListResult,                         '2015-06-15/generated/azure_mgmt_network/models/network_interface_list_result.rb'
    autoload :ConnectionSharedKey,                                '2015-06-15/generated/azure_mgmt_network/models/connection_shared_key.rb'
    autoload :ExpressRouteCircuitArpTable,                        '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_arp_table.rb'
    autoload :ConnectionSharedKeyResult,                          '2015-06-15/generated/azure_mgmt_network/models/connection_shared_key_result.rb'
    autoload :ExpressRouteCircuitsArpTableListResult,             '2015-06-15/generated/azure_mgmt_network/models/express_route_circuits_arp_table_list_result.rb'
    autoload :PublicIPAddressDnsSettings,                         '2015-06-15/generated/azure_mgmt_network/models/public_ipaddress_dns_settings.rb'
    autoload :ExpressRouteCircuitRoutesTable,                     '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_routes_table.rb'
    autoload :DhcpOptions,                                        '2015-06-15/generated/azure_mgmt_network/models/dhcp_options.rb'
    autoload :ExpressRouteCircuitsRoutesTableListResult,          '2015-06-15/generated/azure_mgmt_network/models/express_route_circuits_routes_table_list_result.rb'
    autoload :Usage,                                              '2015-06-15/generated/azure_mgmt_network/models/usage.rb'
    autoload :ApplicationGatewaySku,                              '2015-06-15/generated/azure_mgmt_network/models/application_gateway_sku.rb'
    autoload :LocalNetworkGatewayListResult,                      '2015-06-15/generated/azure_mgmt_network/models/local_network_gateway_list_result.rb'
    autoload :VirtualNetworkGatewayConnectionListResult,          '2015-06-15/generated/azure_mgmt_network/models/virtual_network_gateway_connection_list_result.rb'
    autoload :LoadBalancerListResult,                             '2015-06-15/generated/azure_mgmt_network/models/load_balancer_list_result.rb'
    autoload :VirtualNetworkGatewaySku,                           '2015-06-15/generated/azure_mgmt_network/models/virtual_network_gateway_sku.rb'
    autoload :AzureAsyncOperationResult,                          '2015-06-15/generated/azure_mgmt_network/models/azure_async_operation_result.rb'
    autoload :RouteListResult,                                    '2015-06-15/generated/azure_mgmt_network/models/route_list_result.rb'
    autoload :Error,                                              '2015-06-15/generated/azure_mgmt_network/models/error.rb'
    autoload :SubnetListResult,                                   '2015-06-15/generated/azure_mgmt_network/models/subnet_list_result.rb'
    autoload :ExpressRouteServiceProviderListResult,              '2015-06-15/generated/azure_mgmt_network/models/express_route_service_provider_list_result.rb'
    autoload :VpnClientParameters,                                '2015-06-15/generated/azure_mgmt_network/models/vpn_client_parameters.rb'
    autoload :ErrorDetails,                                       '2015-06-15/generated/azure_mgmt_network/models/error_details.rb'
    autoload :ApplicationGatewayIPConfiguration,                  '2015-06-15/generated/azure_mgmt_network/models/application_gateway_ipconfiguration.rb'
    autoload :ApplicationGatewaySslCertificate,                   '2015-06-15/generated/azure_mgmt_network/models/application_gateway_ssl_certificate.rb'
    autoload :ApplicationGatewayFrontendIPConfiguration,          '2015-06-15/generated/azure_mgmt_network/models/application_gateway_frontend_ipconfiguration.rb'
    autoload :ApplicationGatewayFrontendPort,                     '2015-06-15/generated/azure_mgmt_network/models/application_gateway_frontend_port.rb'
    autoload :BackendAddressPool,                                 '2015-06-15/generated/azure_mgmt_network/models/backend_address_pool.rb'
    autoload :InboundNatRule,                                     '2015-06-15/generated/azure_mgmt_network/models/inbound_nat_rule.rb'
    autoload :SecurityRule,                                       '2015-06-15/generated/azure_mgmt_network/models/security_rule.rb'
    autoload :NetworkInterface,                                   '2015-06-15/generated/azure_mgmt_network/models/network_interface.rb'
    autoload :NetworkSecurityGroup,                               '2015-06-15/generated/azure_mgmt_network/models/network_security_group.rb'
    autoload :Route,                                              '2015-06-15/generated/azure_mgmt_network/models/route.rb'
    autoload :RouteTable,                                         '2015-06-15/generated/azure_mgmt_network/models/route_table.rb'
    autoload :PublicIPAddress,                                    '2015-06-15/generated/azure_mgmt_network/models/public_ipaddress.rb'
    autoload :IPConfiguration,                                    '2015-06-15/generated/azure_mgmt_network/models/ipconfiguration.rb'
    autoload :Subnet,                                             '2015-06-15/generated/azure_mgmt_network/models/subnet.rb'
    autoload :NetworkInterfaceIPConfiguration,                    '2015-06-15/generated/azure_mgmt_network/models/network_interface_ipconfiguration.rb'
    autoload :ApplicationGatewayBackendAddressPool,               '2015-06-15/generated/azure_mgmt_network/models/application_gateway_backend_address_pool.rb'
    autoload :ApplicationGatewayBackendHttpSettings,              '2015-06-15/generated/azure_mgmt_network/models/application_gateway_backend_http_settings.rb'
    autoload :ApplicationGatewayHttpListener,                     '2015-06-15/generated/azure_mgmt_network/models/application_gateway_http_listener.rb'
    autoload :ApplicationGatewayPathRule,                         '2015-06-15/generated/azure_mgmt_network/models/application_gateway_path_rule.rb'
    autoload :ApplicationGatewayProbe,                            '2015-06-15/generated/azure_mgmt_network/models/application_gateway_probe.rb'
    autoload :ApplicationGatewayRequestRoutingRule,               '2015-06-15/generated/azure_mgmt_network/models/application_gateway_request_routing_rule.rb'
    autoload :ApplicationGatewayUrlPathMap,                       '2015-06-15/generated/azure_mgmt_network/models/application_gateway_url_path_map.rb'
    autoload :ApplicationGateway,                                 '2015-06-15/generated/azure_mgmt_network/models/application_gateway.rb'
    autoload :ExpressRouteCircuitAuthorization,                   '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_authorization.rb'
    autoload :ExpressRouteCircuitPeering,                         '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_peering.rb'
    autoload :ExpressRouteCircuit,                                '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit.rb'
    autoload :ExpressRouteServiceProvider,                        '2015-06-15/generated/azure_mgmt_network/models/express_route_service_provider.rb'
    autoload :FrontendIPConfiguration,                            '2015-06-15/generated/azure_mgmt_network/models/frontend_ipconfiguration.rb'
    autoload :LoadBalancingRule,                                  '2015-06-15/generated/azure_mgmt_network/models/load_balancing_rule.rb'
    autoload :Probe,                                              '2015-06-15/generated/azure_mgmt_network/models/probe.rb'
    autoload :InboundNatPool,                                     '2015-06-15/generated/azure_mgmt_network/models/inbound_nat_pool.rb'
    autoload :OutboundNatRule,                                    '2015-06-15/generated/azure_mgmt_network/models/outbound_nat_rule.rb'
    autoload :LoadBalancer,                                       '2015-06-15/generated/azure_mgmt_network/models/load_balancer.rb'
    autoload :VirtualNetwork,                                     '2015-06-15/generated/azure_mgmt_network/models/virtual_network.rb'
    autoload :VirtualNetworkGatewayIPConfiguration,               '2015-06-15/generated/azure_mgmt_network/models/virtual_network_gateway_ipconfiguration.rb'
    autoload :VpnClientRootCertificate,                           '2015-06-15/generated/azure_mgmt_network/models/vpn_client_root_certificate.rb'
    autoload :VpnClientRevokedCertificate,                        '2015-06-15/generated/azure_mgmt_network/models/vpn_client_revoked_certificate.rb'
    autoload :VirtualNetworkGateway,                              '2015-06-15/generated/azure_mgmt_network/models/virtual_network_gateway.rb'
    autoload :LocalNetworkGateway,                                '2015-06-15/generated/azure_mgmt_network/models/local_network_gateway.rb'
    autoload :VirtualNetworkGatewayConnection,                    '2015-06-15/generated/azure_mgmt_network/models/virtual_network_gateway_connection.rb'
    autoload :ApplicationGatewaySkuName,                          '2015-06-15/generated/azure_mgmt_network/models/application_gateway_sku_name.rb'
    autoload :ApplicationGatewayTier,                             '2015-06-15/generated/azure_mgmt_network/models/application_gateway_tier.rb'
    autoload :IPAllocationMethod,                                 '2015-06-15/generated/azure_mgmt_network/models/ipallocation_method.rb'
    autoload :TransportProtocol,                                  '2015-06-15/generated/azure_mgmt_network/models/transport_protocol.rb'
    autoload :SecurityRuleProtocol,                               '2015-06-15/generated/azure_mgmt_network/models/security_rule_protocol.rb'
    autoload :SecurityRuleAccess,                                 '2015-06-15/generated/azure_mgmt_network/models/security_rule_access.rb'
    autoload :SecurityRuleDirection,                              '2015-06-15/generated/azure_mgmt_network/models/security_rule_direction.rb'
    autoload :RouteNextHopType,                                   '2015-06-15/generated/azure_mgmt_network/models/route_next_hop_type.rb'
    autoload :ApplicationGatewayProtocol,                         '2015-06-15/generated/azure_mgmt_network/models/application_gateway_protocol.rb'
    autoload :ApplicationGatewayCookieBasedAffinity,              '2015-06-15/generated/azure_mgmt_network/models/application_gateway_cookie_based_affinity.rb'
    autoload :ApplicationGatewayRequestRoutingRuleType,           '2015-06-15/generated/azure_mgmt_network/models/application_gateway_request_routing_rule_type.rb'
    autoload :ApplicationGatewayOperationalState,                 '2015-06-15/generated/azure_mgmt_network/models/application_gateway_operational_state.rb'
    autoload :AuthorizationUseStatus,                             '2015-06-15/generated/azure_mgmt_network/models/authorization_use_status.rb'
    autoload :ExpressRouteCircuitPeeringAdvertisedPublicPrefixState, '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_peering_advertised_public_prefix_state.rb'
    autoload :ExpressRouteCircuitPeeringType,                     '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_peering_type.rb'
    autoload :ExpressRouteCircuitPeeringState,                    '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_peering_state.rb'
    autoload :ExpressRouteCircuitSkuTier,                         '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_sku_tier.rb'
    autoload :ExpressRouteCircuitSkuFamily,                       '2015-06-15/generated/azure_mgmt_network/models/express_route_circuit_sku_family.rb'
    autoload :ServiceProviderProvisioningState,                   '2015-06-15/generated/azure_mgmt_network/models/service_provider_provisioning_state.rb'
    autoload :LoadDistribution,                                   '2015-06-15/generated/azure_mgmt_network/models/load_distribution.rb'
    autoload :ProbeProtocol,                                      '2015-06-15/generated/azure_mgmt_network/models/probe_protocol.rb'
    autoload :NetworkOperationStatus,                             '2015-06-15/generated/azure_mgmt_network/models/network_operation_status.rb'
    autoload :VirtualNetworkGatewayType,                          '2015-06-15/generated/azure_mgmt_network/models/virtual_network_gateway_type.rb'
    autoload :VpnType,                                            '2015-06-15/generated/azure_mgmt_network/models/vpn_type.rb'
    autoload :VirtualNetworkGatewaySkuName,                       '2015-06-15/generated/azure_mgmt_network/models/virtual_network_gateway_sku_name.rb'
    autoload :VirtualNetworkGatewaySkuTier,                       '2015-06-15/generated/azure_mgmt_network/models/virtual_network_gateway_sku_tier.rb'
    autoload :ProcessorArchitecture,                              '2015-06-15/generated/azure_mgmt_network/models/processor_architecture.rb'
    autoload :VirtualNetworkGatewayConnectionType,                '2015-06-15/generated/azure_mgmt_network/models/virtual_network_gateway_connection_type.rb'
    autoload :VirtualNetworkGatewayConnectionStatus,              '2015-06-15/generated/azure_mgmt_network/models/virtual_network_gateway_connection_status.rb'
  end
end
