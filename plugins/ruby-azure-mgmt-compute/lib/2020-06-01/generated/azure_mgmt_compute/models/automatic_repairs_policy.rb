# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_06_01
  module Models
    #
    # Specifies the configuration parameters for automatic repairs on the
    # virtual machine scale set.
    #
    class AutomaticRepairsPolicy

      include MsRestAzure

      # @return [Boolean] Specifies whether automatic repairs should be enabled
      # on the virtual machine scale set. The default value is false.
      attr_accessor :enabled

      # @return [String] The amount of time for which automatic repairs are
      # suspended due to a state change on VM. The grace time starts after the
      # state change has completed. This helps avoid premature or accidental
      # repairs. The time duration should be specified in ISO 8601 format. The
      # minimum allowed grace period is 30 minutes (PT30M), which is also the
      # default value. The maximum allowed grace period is 90 minutes (PT90M).
      attr_accessor :grace_period


      #
      # Mapper for AutomaticRepairsPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutomaticRepairsPolicy',
          type: {
            name: 'Composite',
            class_name: 'AutomaticRepairsPolicy',
            model_properties: {
              enabled: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabled',
                type: {
                  name: 'Boolean'
                }
              },
              grace_period: {
                client_side_validation: true,
                required: false,
                serialized_name: 'gracePeriod',
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
