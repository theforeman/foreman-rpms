# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_12_01
  module Models
    #
    # Describes a virtual machine scale set network profile.
    #
    class VirtualMachineScaleSetUpdateNetworkProfile

      include MsRestAzure

      # @return [Array<VirtualMachineScaleSetUpdateNetworkConfiguration>] The
      # list of network configurations.
      attr_accessor :network_interface_configurations


      #
      # Mapper for VirtualMachineScaleSetUpdateNetworkProfile class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSetUpdateNetworkProfile',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetUpdateNetworkProfile',
            model_properties: {
              network_interface_configurations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkInterfaceConfigurations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VirtualMachineScaleSetUpdateNetworkConfigurationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachineScaleSetUpdateNetworkConfiguration'
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
