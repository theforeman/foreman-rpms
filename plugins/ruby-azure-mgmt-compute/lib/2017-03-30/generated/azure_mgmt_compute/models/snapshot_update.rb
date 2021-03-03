# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_03_30
  module Models
    #
    # Snapshot update resource.
    #
    class SnapshotUpdate < ResourceUpdate

      include MsRestAzure

      # @return [OperatingSystemTypes] the Operating System type. Possible
      # values include: 'Windows', 'Linux'
      attr_accessor :os_type

      # @return [Integer] If creationData.createOption is Empty, this field is
      # mandatory and it indicates the size of the VHD to create. If this field
      # is present for updates or creation with other options, it indicates a
      # resize. Resizes are only allowed if the disk is not attached to a
      # running VM, and can only increase the disk's size.
      attr_accessor :disk_size_gb

      # @return [EncryptionSettings] Encryption settings for disk or snapshot
      attr_accessor :encryption_settings


      #
      # Mapper for SnapshotUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SnapshotUpdate',
          type: {
            name: 'Composite',
            class_name: 'SnapshotUpdate',
            model_properties: {
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
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'DiskSku'
                }
              },
              os_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.osType',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              },
              disk_size_gb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.diskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              encryption_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.encryptionSettings',
                type: {
                  name: 'Composite',
                  class_name: 'EncryptionSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
