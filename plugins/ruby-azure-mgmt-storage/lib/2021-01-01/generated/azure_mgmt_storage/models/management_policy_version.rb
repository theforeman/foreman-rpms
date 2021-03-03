# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # Management policy action for blob version.
    #
    class ManagementPolicyVersion

      include MsRestAzure

      # @return [DateAfterCreation] The function to tier blob version to cool
      # storage. Support blob version currently at Hot tier
      attr_accessor :tier_to_cool

      # @return [DateAfterCreation] The function to tier blob version to
      # archive storage. Support blob version currently at Hot or Cool tier
      attr_accessor :tier_to_archive

      # @return [DateAfterCreation] The function to delete the blob version
      attr_accessor :delete


      #
      # Mapper for ManagementPolicyVersion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementPolicyVersion',
          type: {
            name: 'Composite',
            class_name: 'ManagementPolicyVersion',
            model_properties: {
              tier_to_cool: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tierToCool',
                type: {
                  name: 'Composite',
                  class_name: 'DateAfterCreation'
                }
              },
              tier_to_archive: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tierToArchive',
                type: {
                  name: 'Composite',
                  class_name: 'DateAfterCreation'
                }
              },
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
