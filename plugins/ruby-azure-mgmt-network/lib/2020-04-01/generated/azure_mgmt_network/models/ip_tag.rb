# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_04_01
  module Models
    #
    # Contains the IpTag associated with the object.
    #
    class IpTag

      include MsRestAzure

      # @return [String] The IP tag type. Example: FirstPartyUsage.
      attr_accessor :ip_tag_type

      # @return [String] The value of the IP tag associated with the public IP.
      # Example: SQL.
      attr_accessor :tag


      #
      # Mapper for IpTag class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IpTag',
          type: {
            name: 'Composite',
            class_name: 'IpTag',
            model_properties: {
              ip_tag_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipTagType',
                type: {
                  name: 'String'
                }
              },
              tag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tag',
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
