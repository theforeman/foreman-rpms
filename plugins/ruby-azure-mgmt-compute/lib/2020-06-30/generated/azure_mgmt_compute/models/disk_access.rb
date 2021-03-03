# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_06_30
  module Models
    #
    # disk access resource.
    #
    class DiskAccess < Resource

      include MsRestAzure

      # @return [Array<PrivateEndpointConnection>] A readonly collection of
      # private endpoint connections created on the disk. Currently only one
      # endpoint connection is supported.
      attr_accessor :private_endpoint_connections

      # @return [String] The disk access resource provisioning state.
      attr_accessor :provisioning_state

      # @return [DateTime] The time when the disk access was created.
      attr_accessor :time_created


      #
      # Mapper for DiskAccess class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiskAccess',
          type: {
            name: 'Composite',
            class_name: 'DiskAccess',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
                required: true,
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
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              time_created: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.timeCreated',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
