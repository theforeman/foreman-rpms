# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_06_01
  module Models
    #
    # Private dns zone group resource.
    #
    class PrivateDnsZoneGroup < SubResource

      include MsRestAzure

      # @return [String] Name of the resource that is unique within a resource
      # group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [ProvisioningState] The provisioning state of the private dns
      # zone group resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [Array<PrivateDnsZoneConfig>] A collection of private dns zone
      # configurations of the private dns zone group.
      attr_accessor :private_dns_zone_configs


      #
      # Mapper for PrivateDnsZoneGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PrivateDnsZoneGroup',
          type: {
            name: 'Composite',
            class_name: 'PrivateDnsZoneGroup',
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
                serialized_name: 'name',
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
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              private_dns_zone_configs: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.privateDnsZoneConfigs',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PrivateDnsZoneConfigElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrivateDnsZoneConfig'
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
