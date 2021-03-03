# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_07_01
  module Models
    #
    # Trusted Root certificates of an application gateway.
    #
    class ApplicationGatewayTrustedRootCertificate < SubResource

      include MsRestAzure

      # @return [String] Certificate public data.
      attr_accessor :data

      # @return [String] Secret Id of (base-64 encoded unencrypted pfx)
      # 'Secret' or 'Certificate' object stored in KeyVault.
      attr_accessor :key_vault_secret_id

      # @return [ProvisioningState] The provisioning state of the trusted root
      # certificate resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [String] Name of the trusted root certificate that is unique
      # within an Application Gateway.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for ApplicationGatewayTrustedRootCertificate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayTrustedRootCertificate',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayTrustedRootCertificate',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.data',
                type: {
                  name: 'String'
                }
              },
              key_vault_secret_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.keyVaultSecretId',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
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
