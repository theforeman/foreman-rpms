# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # Azure Firewall resource.
    #
    class AzureFirewall < Resource

      include MsRestAzure

      # @return [Array<AzureFirewallApplicationRuleCollection>] Collection of
      # application rule collections used by Azure Firewall.
      attr_accessor :application_rule_collections

      # @return [Array<AzureFirewallNatRuleCollection>] Collection of NAT rule
      # collections used by Azure Firewall.
      attr_accessor :nat_rule_collections

      # @return [Array<AzureFirewallNetworkRuleCollection>] Collection of
      # network rule collections used by Azure Firewall.
      attr_accessor :network_rule_collections

      # @return [Array<AzureFirewallIPConfiguration>] IP configuration of the
      # Azure Firewall resource.
      attr_accessor :ip_configurations

      # @return [AzureFirewallIPConfiguration] IP configuration of the Azure
      # Firewall used for management traffic.
      attr_accessor :management_ip_configuration

      # @return [ProvisioningState] The provisioning state of the Azure
      # firewall resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [AzureFirewallThreatIntelMode] The operation mode for Threat
      # Intelligence. Possible values include: 'Alert', 'Deny', 'Off'
      attr_accessor :threat_intel_mode

      # @return [SubResource] The virtualHub to which the firewall belongs.
      attr_accessor :virtual_hub

      # @return [SubResource] The firewallPolicy associated with this azure
      # firewall.
      attr_accessor :firewall_policy

      # @return [HubIPAddresses] IP addresses associated with AzureFirewall.
      attr_accessor :hub_ipaddresses

      # @return [Array<AzureFirewallIpGroups>] IpGroups associated with
      # AzureFirewall.
      attr_accessor :ip_groups

      # @return [AzureFirewallSku] The Azure Firewall Resource SKU.
      attr_accessor :sku

      # @return [Hash{String => String}] The additional properties used to
      # further config this azure firewall.
      attr_accessor :additional_properties

      # @return [Array<String>] A list of availability zones denoting where the
      # resource needs to come from.
      attr_accessor :zones

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for AzureFirewall class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFirewall',
          type: {
            name: 'Composite',
            class_name: 'AzureFirewall',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              application_rule_collections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.applicationRuleCollections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureFirewallApplicationRuleCollectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureFirewallApplicationRuleCollection'
                      }
                  }
                }
              },
              nat_rule_collections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.natRuleCollections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureFirewallNatRuleCollectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureFirewallNatRuleCollection'
                      }
                  }
                }
              },
              network_rule_collections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.networkRuleCollections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureFirewallNetworkRuleCollectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureFirewallNetworkRuleCollection'
                      }
                  }
                }
              },
              ip_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ipConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureFirewallIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureFirewallIPConfiguration'
                      }
                  }
                }
              },
              management_ip_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.managementIpConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'AzureFirewallIPConfiguration'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              threat_intel_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.threatIntelMode',
                type: {
                  name: 'String'
                }
              },
              virtual_hub: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualHub',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              firewall_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.firewallPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              hub_ipaddresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.hubIPAddresses',
                type: {
                  name: 'Composite',
                  class_name: 'HubIPAddresses'
                }
              },
              ip_groups: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.ipGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureFirewallIpGroupsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureFirewallIpGroups'
                      }
                  }
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sku',
                type: {
                  name: 'Composite',
                  class_name: 'AzureFirewallSku'
                }
              },
              additional_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.additionalProperties',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              zones: {
                client_side_validation: true,
                required: false,
                serialized_name: 'zones',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
