# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2020_08_01_preview
  module Models
    #
    # Management policy action for snapshot.
    #
    class ManagementPolicySnapShot

      include MsRestAzure

      # @return [DateAfterCreation] The function to delete the blob snapshot
      attr_accessor :delete


      #
      # Mapper for ManagementPolicySnapShot class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementPolicySnapShot',
          type: {
            name: 'Composite',
            class_name: 'ManagementPolicySnapShot',
            model_properties: {
              delete: {
                client_side_validation: true,
                required: false,
                serialized_name: 'delete',
                type: {
                  name: 'Composite',
                  class_name: 'DateAfterCreation'
                }
              }
            }
          }
        }
      end
    end
  end
end
