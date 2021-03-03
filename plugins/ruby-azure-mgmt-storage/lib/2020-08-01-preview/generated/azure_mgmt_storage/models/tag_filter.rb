# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2020_08_01_preview
  module Models
    #
    # Blob index tag based filtering for blob objects
    #
    class TagFilter

      include MsRestAzure

      # @return [String] This is the filter tag name, it can have 1 - 128
      # characters
      attr_accessor :name

      # @return [String] This is the comparison operator which is used for
      # object comparison and filtering. Only == (equality operator) is
      # currently supported
      attr_accessor :op

      # @return [String] This is the filter tag value field used for tag based
      # filtering, it can have 0 - 256 characters
      attr_accessor :value


      #
      # Mapper for TagFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TagFilter',
          type: {
            name: 'Composite',
            class_name: 'TagFilter',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                constraints: {
                  MaxLength: 128,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              op: {
                client_side_validation: true,
                required: true,
                serialized_name: 'op',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                constraints: {
                  MaxLength: 256,
                  MinLength: 0
                },
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
