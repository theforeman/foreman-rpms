# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2018_02_01
  module Models
    #
    # An update history of the ImmutabilityPolicy of a blob container.
    #
    class UpdateHistoryProperty

      include MsRestAzure

      # @return [ImmutabilityPolicyUpdateType] The ImmutabilityPolicy update
      # type of a blob container, possible values include: put, lock and
      # extend. Possible values include: 'put', 'lock', 'extend'
      attr_accessor :update

      # @return [Integer] The immutability period for the blobs in the
      # container since the policy creation, in days.
      attr_accessor :immutability_period_since_creation_in_days

      # @return [DateTime] Returns the date and time the ImmutabilityPolicy was
      # updated.
      attr_accessor :timestamp

      # @return [String] Returns the Object ID of the user who updated the
      # ImmutabilityPolicy.
      attr_accessor :object_identifier

      # @return [String] Returns the Tenant ID that issued the token for the
      # user who updated the ImmutabilityPolicy.
      attr_accessor :tenant_id

      # @return [String] Returns the User Principal Name of the user who
      # updated the ImmutabilityPolicy.
      attr_accessor :upn


      #
      # Mapper for UpdateHistoryProperty class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpdateHistoryProperty',
          type: {
            name: 'Composite',
            class_name: 'UpdateHistoryProperty',
            model_properties: {
              update: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'update',
                type: {
                  name: 'String'
                }
              },
              immutability_period_since_creation_in_days: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'immutabilityPeriodSinceCreationInDays',
                type: {
                  name: 'Number'
                }
              },
              timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              object_identifier: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'objectIdentifier',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              upn: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'upn',
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
