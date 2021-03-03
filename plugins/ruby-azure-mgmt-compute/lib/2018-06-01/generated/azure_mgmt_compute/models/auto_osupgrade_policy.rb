# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_06_01
  module Models
    #
    # The configuration parameters used for performing automatic OS upgrade.
    #
    class AutoOSUpgradePolicy

      include MsRestAzure

      # @return [Boolean] Whether OS image rollback feature should be disabled.
      # Default value is false.
      attr_accessor :disable_auto_rollback


      #
      # Mapper for AutoOSUpgradePolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AutoOSUpgradePolicy',
          type: {
            name: 'Composite',
            class_name: 'AutoOSUpgradePolicy',
            model_properties: {
              disable_auto_rollback: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disableAutoRollback',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
