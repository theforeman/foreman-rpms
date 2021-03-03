# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_09_01
  module Models
    #
    # Private link service resource.
    #
    class PrivateLinkService < Resource

      include MsRestAzure

      # @return [Array<FrontendIPConfiguration>] An array of references to the
      # load balancer IP configurations.
      attr_accessor :load_balancer_frontend_ip_configurations

      # @return [Array<PrivateLinkServiceIpConfiguration>] An array of private
      # link service IP configurations.
      attr_accessor :ip_configurations

      # @return [Array<NetworkInterface>] An array of references to the network
      # interfaces created for this private link service.
      attr_accessor :network_interfaces

      # @return [ProvisioningState] The provisioning state of the private link
      # service resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [Array<PrivateEndpointConnection>] An array of list about
      # connections to the private endpoint.
      attr_accessor :private_endpoint_connections

      # @return [PrivateLinkServicePropertiesVisibility] The visibility list of
      # the private link service.
      attr_accessor :visibility

      # @return [PrivateLinkServicePropertiesAutoApproval] The auto-approval
      # list of the private link service.
      attr_accessor :auto_approval

      # @return [Array<String>] The list of Fqdn.
      attr_accessor :fqdns

      # @return [String] The alias of the private link service.
      attr_accessor :alias_property

      # @return [Boolean] Whether the private link service is enabled for proxy
      # protocol or not.
      attr_accessor :enable_proxy_protocol

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag


      #
      # Mapper for PrivateLinkService class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateLinkService',
          type: {
            name: 'Composite',
            class_name: 'PrivateLinkService',
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
              load_balancer_frontend_ip_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.loadBalancerFrontendIpConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FrontendIPConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FrontendIPConfiguration'
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
                      serialized_name: 'PrivateLinkServiceIpConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrivateLinkServiceIpConfiguration'
                      }
                  }
                }
              },
              network_interfaces: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.networkInterfaces',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetworkInterfaceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetworkInterface'
                      }
                  }
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
              private_endpoint_connections: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.privateEndpointConnections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PrivateEndpointConnectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrivateEndpointConnection'
                      }
                  }
                }
              },
              visibility: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.visibility',
                type: {
                  name: 'Composite',
                  class_name: 'PrivateLinkServicePropertiesVisibility'
                }
              },
              auto_approval: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.autoApproval',
                type: {
                  name: 'Composite',
                  class_name: 'PrivateLinkServicePropertiesAutoApproval'
                }
              },
              fqdns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.fqdns',
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
              alias_property: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.alias',
                type: {
                  name: 'String'
                }
              },
              enable_proxy_protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableProxyProtocol',
                type: {
                  name: 'Boolean'
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
