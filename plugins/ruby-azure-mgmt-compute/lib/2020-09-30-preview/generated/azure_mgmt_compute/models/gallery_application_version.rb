# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30_preview
  module Models
    #
    # Specifies information about the gallery Application Version that you want
    # to create or update.
    #
    class GalleryApplicationVersion < Resource

      include MsRestAzure

      # @return [GalleryApplicationVersionPublishingProfile]
      attr_accessor :publishing_profile

      # @return [Enum] The current state of the gallery Application Version.
      # The provisioning state, which only appears in the response. Possible
      # values include: 'Creating', 'Updating', 'Failed', 'Succeeded',
      # 'Deleting', 'Migrating'
      attr_accessor :provisioning_state

      # @return [ReplicationStatus]
      attr_accessor :replication_status


      #
      # Mapper for GalleryApplicationVersion class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryApplicationVersion',
          type: {
            name: 'Composite',
            class_name: 'GalleryApplicationVersion',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
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
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              publishing_profile: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.publishingProfile',
                type: {
                  name: 'Composite',
                  class_name: 'GalleryApplicationVersionPublishingProfile'
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
              replication_status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.replicationStatus',
                type: {
                  name: 'Composite',
                  class_name: 'ReplicationStatus'
                }
              }
            }
          }
        }
      end
    end
  end
end
