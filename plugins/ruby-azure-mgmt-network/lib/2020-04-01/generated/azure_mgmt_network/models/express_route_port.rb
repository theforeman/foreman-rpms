# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_04_01
  module Models
    #
    # ExpressRoute Port

    # ExpressRoutePort resource definition.
    #
    class ExpressRoutePort < Resource

      include MsRestAzure

      # @return [String] The name of the peering location that the
      # ExpressRoutePort is mapped to physically.
      attr_accessor :peering_location

      # @return [Integer] Bandwidth of procured ports in Gbps.
      attr_accessor :bandwidth_in_gbps

      # @return [Float] Aggregate Gbps of associated circuit bandwidths.
      attr_accessor :provisioned_bandwidth_in_gbps

      # @return [String] Maximum transmission unit of the physical port
      # pair(s).
      attr_accessor :mtu

      # @return [ExpressRoutePortsEncapsulation] Encapsulation method on
      # physical ports. Possible values include: 'Dot1Q', 'QinQ'
      attr_accessor :encapsulation

      # @return [String] Ether type of the physical port.
      attr_accessor :ether_type

      # @return [String] Date of the physical port allocation to be used in
      # Letter of Authorization.
      attr_accessor :allocation_date

      # @return [Array<ExpressRouteLink>] ExpressRouteLink Sub-Resources. The
      # set of physical links of the ExpressRoutePort resource.
      attr_accessor :links

      # @return [Array<SubResource>] Reference the ExpressRoute circuit(s) that
      # are provisioned on this ExpressRoutePort resource.
      attr_accessor :circuits

      # @return [ProvisioningState] The provisioning state of the express route
      # port resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] The resource GUID property of the express route port
      # resource.
      attr_accessor :resource_guid

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [ManagedServiceIdentity] The identity of ExpressRoutePort, if
      # configured.
      attr_accessor :identity


      #
      # Mapper for ExpressRoutePort class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRoutePort',
          type: {
            name: 'Composite',
            class_name: 'ExpressRoutePort',
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
              peering_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peeringLocation',
                type: {
                  name: 'String'
                }
              },
              bandwidth_in_gbps: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bandwidthInGbps',
                type: {
                  name: 'Number'
                }
              },
              provisioned_bandwidth_in_gbps: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisionedBandwidthInGbps',
                type: {
                  name: 'Double'
                }
              },
              mtu: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.mtu',
                type: {
                  name: 'String'
                }
              },
              encapsulation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encapsulation',
                type: {
                  name: 'String'
                }
              },
              ether_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.etherType',
                type: {
                  name: 'String'
                }
              },
              allocation_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.allocationDate',
                type: {
                  name: 'String'
                }
              },
              links: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.links',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExpressRouteLinkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteLink'
                      }
                  }
                }
              },
              circuits: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.circuits',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
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
              resource_guid: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
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
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'ManagedServiceIdentity'
                }
              }
            }
          }
        }
      end
    end
  end
end
