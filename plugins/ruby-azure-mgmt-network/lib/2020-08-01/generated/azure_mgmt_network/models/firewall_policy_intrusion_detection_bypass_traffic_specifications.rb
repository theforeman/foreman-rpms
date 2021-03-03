# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # Intrusion detection bypass traffic specification.
    #
    class FirewallPolicyIntrusionDetectionBypassTrafficSpecifications

      include MsRestAzure

      # @return [String] Name of the bypass traffic rule.
      attr_accessor :name

      # @return [String] Description of the bypass traffic rule.
      attr_accessor :description

      # @return [FirewallPolicyIntrusionDetectionProtocol] The rule bypass
      # protocol. Possible values include: 'TCP', 'UDP', 'ICMP', 'ANY'
      attr_accessor :protocol

      # @return [Array<String>] List of source IP addresses or ranges for this
      # rule.
      attr_accessor :source_addresses

      # @return [Array<String>] List of destination IP addresses or ranges for
      # this rule.
      attr_accessor :destination_addresses

      # @return [Array<String>] List of destination ports or ranges.
      attr_accessor :destination_ports

      # @return [Array<String>] List of source IpGroups for this rule.
      attr_accessor :source_ip_groups

      # @return [Array<String>] List of destination IpGroups for this rule.
      attr_accessor :destination_ip_groups


      #
      # Mapper for FirewallPolicyIntrusionDetectionBypassTrafficSpecifications
      # class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FirewallPolicyIntrusionDetectionBypassTrafficSpecifications',
          type: {
            name: 'Composite',
            class_name: 'FirewallPolicyIntrusionDetectionBypassTrafficSpecifications',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protocol',
                type: {
                  name: 'String'
                }
              },
              source_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceAddresses',
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
              destination_addresses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationAddresses',
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
              destination_ports: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationPorts',
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
              source_ip_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceIpGroups',
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
              destination_ip_groups: {
                client_side_validation: true,
                required: false,
                serialized_name: 'destinationIpGroups',
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
              }
            }
          }
        }
      end
    end
  end
end
