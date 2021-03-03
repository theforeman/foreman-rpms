# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2016_02_01
  module Models
    #
    # Deployment operation properties.
    #
    class DeploymentOperationProperties

      include MsRestAzure

      # @return [String] The state of the provisioning.
      attr_accessor :provisioning_state

      # @return [DateTime] The date and time of the operation.
      attr_accessor :timestamp

      # @return [String] Deployment operation service request id.
      attr_accessor :service_request_id

      # @return [String] Operation status code.
      attr_accessor :status_code

      # @return Operation status message.
      attr_accessor :status_message

      # @return [TargetResource] The target resource.
      attr_accessor :target_resource

      # @return [HttpMessage] The HTTP request message.
      attr_accessor :request

      # @return [HttpMessage] The HTTP response message.
      attr_accessor :response


      #
      # Mapper for DeploymentOperationProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeploymentOperationProperties',
          type: {
            name: 'Composite',
            class_name: 'DeploymentOperationProperties',
            model_properties: {
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              service_request_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceRequestId',
                type: {
                  name: 'String'
                }
              },
              status_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statusCode',
                type: {
                  name: 'String'
                }
              },
              status_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'statusMessage',
                type: {
                  name: 'Object'
                }
              },
              target_resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetResource',
                type: {
                  name: 'Composite',
                  class_name: 'TargetResource'
                }
              },
              request: {
                client_side_validation: true,
                required: false,
                serialized_name: 'request',
                type: {
                  name: 'Composite',
                  class_name: 'HttpMessage'
                }
              },
              response: {
                client_side_validation: true,
                required: false,
                serialized_name: 'response',
                type: {
                  name: 'Composite',
                  class_name: 'HttpMessage'
                }
              }
            }
          }
        }
      end
    end
  end
end
