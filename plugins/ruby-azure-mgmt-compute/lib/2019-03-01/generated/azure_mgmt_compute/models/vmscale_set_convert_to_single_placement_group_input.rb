# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_03_01
  module Models
    #
    # Model object.
    #
    #
    class VMScaleSetConvertToSinglePlacementGroupInput

      include MsRestAzure

      # @return [String] Id of the placement group in which you want future
      # virtual machine instances to be placed. To query placement group Id,
      # please use Virtual Machine Scale Set VMs - Get API. If not provided,
      # the platform will choose one with maximum number of virtual machine
      # instances.
      attr_accessor :active_placement_group_id


      #
      # Mapper for VMScaleSetConvertToSinglePlacementGroupInput class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VMScaleSetConvertToSinglePlacementGroupInput',
          type: {
            name: 'Composite',
            class_name: 'VMScaleSetConvertToSinglePlacementGroupInput',
            model_properties: {
              active_placement_group_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'activePlacementGroupId',
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
