# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_06_30
  module Models
    #
    # Data used for requesting a SAS.
    #
    class GrantAccessData

      include MsRestAzure

      # @return [AccessLevel] Possible values include: 'None', 'Read', 'Write'
      attr_accessor :access

      # @return [Integer] Time duration in seconds until the SAS access
      # expires.
      attr_accessor :duration_in_seconds


      #
      # Mapper for GrantAccessData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GrantAccessData',
          type: {
            name: 'Composite',
            class_name: 'GrantAccessData',
            model_properties: {
              access: {
                client_side_validation: true,
                required: true,
                serialized_name: 'access',
                type: {
                  name: 'String'
                }
              },
              duration_in_seconds: {
                client_side_validation: true,
                required: true,
                serialized_name: 'durationInSeconds',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
