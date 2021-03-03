# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_12_01
  module Models
    #
    # Describes a image disk.
    #
    class ImageDisk

      include MsRestAzure

      # @return [SubResource] The snapshot.
      attr_accessor :snapshot

      # @return [SubResource] The managedDisk.
      attr_accessor :managed_disk

      # @return [String] The Virtual Hard Disk.
      attr_accessor :blob_uri

      # @return [CachingTypes] Specifies the caching requirements. <br><br>
      # Possible values are: <br><br> **None** <br><br> **ReadOnly** <br><br>
      # **ReadWrite** <br><br> Default: **None for Standard storage. ReadOnly
      # for Premium storage**. Possible values include: 'None', 'ReadOnly',
      # 'ReadWrite'
      attr_accessor :caching

      # @return [Integer] Specifies the size of empty data disks in gigabytes.
      # This element can be used to overwrite the name of the disk in a virtual
      # machine image. <br><br> This value cannot be larger than 1023 GB
      attr_accessor :disk_size_gb

      # @return [StorageAccountTypes] Specifies the storage account type for
      # the managed disk. NOTE: UltraSSD_LRS can only be used with data disks,
      # it cannot be used with OS Disk. Possible values include:
      # 'Standard_LRS', 'Premium_LRS', 'StandardSSD_LRS', 'UltraSSD_LRS'
      attr_accessor :storage_account_type

      # @return [DiskEncryptionSetParameters] Specifies the customer managed
      # disk encryption set resource id for the managed image disk.
      attr_accessor :disk_encryption_set


      #
      # Mapper for ImageDisk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageDisk',
          type: {
            name: 'Composite',
            class_name: 'ImageDisk',
            model_properties: {
              snapshot: {
                client_side_validation: true,
                required: false,
                serialized_name: 'snapshot',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              managed_disk: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managedDisk',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              blob_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'blobUri',
                type: {
                  name: 'String'
                }
              },
              caching: {
                client_side_validation: true,
                required: false,
                serialized_name: 'caching',
                type: {
                  name: 'Enum',
                  module: 'CachingTypes'
                }
              },
              disk_size_gb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskSizeGB',
                type: {
                  name: 'Number'
                }
              },
              storage_account_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountType',
                type: {
                  name: 'String'
                }
              },
              disk_encryption_set: {
                client_side_validation: true,
                required: false,
                serialized_name: 'diskEncryptionSet',
                type: {
                  name: 'Composite',
                  class_name: 'DiskEncryptionSetParameters'
                }
              }
            }
          }
        }
      end
    end
  end
end
