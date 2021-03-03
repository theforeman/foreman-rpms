# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # The instance view of a dedicated host.
    #
    class DedicatedHostInstanceView

      include MsRestAzure

      # @return [String] Specifies the unique id of the dedicated physical
      # machine on which the dedicated host resides.
      attr_accessor :asset_id

      # @return [DedicatedHostAvailableCapacity] Unutilized capacity of the
      # dedicated host.
      attr_accessor :available_capacity

      # @return [Array<InstanceViewStatus>] The resource status information.
      attr_accessor :statuses


      #
      # Mapper for DedicatedHostInstanceView class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DedicatedHostInstanceView',
          type: {
            name: 'Composite',
            class_name: 'DedicatedHostInstanceView',
            model_properties: {
              asset_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'assetId',
                type: {
                  name: 'String'
                }
              },
              available_capacity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'availableCapacity',
                type: {
                  name: 'Composite',
                  class_name: 'DedicatedHostAvailableCapacity'
                }
              },
              statuses: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statuses',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'InstanceViewStatusElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InstanceViewStatus'
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
