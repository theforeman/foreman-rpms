# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # Customer error of an application gateway.
    #
    class ApplicationGatewayCustomError

      include MsRestAzure

      # @return [ApplicationGatewayCustomErrorStatusCode] Status code of the
      # application gateway customer error. Possible values include:
      # 'HttpStatus403', 'HttpStatus502'
      attr_accessor :status_code

      # @return [String] Error page URL of the application gateway customer
      # error.
      attr_accessor :custom_error_page_url


      #
      # Mapper for ApplicationGatewayCustomError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayCustomError',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayCustomError',
            model_properties: {
              status_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statusCode',
                type: {
                  name: 'String'
                }
              },
              custom_error_page_url: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customErrorPageUrl',
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
