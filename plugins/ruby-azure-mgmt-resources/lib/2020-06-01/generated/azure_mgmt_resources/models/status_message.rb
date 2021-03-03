# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2020_06_01
  module Models
    #
    # Operation status message object.
    #
    class StatusMessage

      include MsRestAzure

      # @return [String] Status of the deployment operation.
      attr_accessor :status

      # @return [ErrorResponse] The error reported by the operation.
      attr_accessor :error


      #
      # Mapper for StatusMessage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StatusMessage',
          type: {
            name: 'Composite',
            class_name: 'StatusMessage',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ErrorResponse'
                }
              }
            }
          }
        }
      end
    end
  end
end
