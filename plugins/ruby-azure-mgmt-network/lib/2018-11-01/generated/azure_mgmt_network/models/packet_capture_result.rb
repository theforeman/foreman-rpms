# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_11_01
  module Models
    #
    # Information about packet capture session.
    #
    class PacketCaptureResult

      include MsRestAzure

      # @return [String] Name of the packet capture session.
      attr_accessor :name

      # @return [String] ID of the packet capture operation.
      attr_accessor :id

      # @return [String] . Default value: 'A unique read-only string that
      # changes whenever the resource is updated.' .
      attr_accessor :etag

      # @return [String] The ID of the targeted resource, only VM is currently
      # supported.
      attr_accessor :target

      # @return [Integer] Number of bytes captured per packet, the remaining
      # bytes are truncated. Default value: 0 .
      attr_accessor :bytes_to_capture_per_packet

      # @return [Integer] Maximum size of the capture output. Default value:
      # 1073741824 .
      attr_accessor :total_bytes_per_session

      # @return [Integer] Maximum duration of the capture session in seconds.
      # Default value: 18000 .
      attr_accessor :time_limit_in_seconds

      # @return [PacketCaptureStorageLocation]
      attr_accessor :storage_location

      # @return [Array<PacketCaptureFilter>]
      attr_accessor :filters

      # @return [ProvisioningState] The provisioning state of the packet
      # capture session. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state


      #
      # Mapper for PacketCaptureResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PacketCaptureResult',
          type: {
            name: 'Composite',
            class_name: 'PacketCaptureResult',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                default_value: 'A unique read-only string that changes whenever the resource is updated.',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.target',
                type: {
                  name: 'String'
                }
              },
              bytes_to_capture_per_packet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bytesToCapturePerPacket',
                default_value: 0,
                type: {
                  name: 'Number'
                }
              },
              total_bytes_per_session: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.totalBytesPerSession',
                default_value: 1073741824,
                type: {
                  name: 'Number'
                }
              },
              time_limit_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.timeLimitInSeconds',
                default_value: 18000,
                type: {
                  name: 'Number'
                }
              },
              storage_location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.storageLocation',
                type: {
                  name: 'Composite',
                  class_name: 'PacketCaptureStorageLocation'
                }
              },
              filters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.filters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PacketCaptureFilterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PacketCaptureFilter'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
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
