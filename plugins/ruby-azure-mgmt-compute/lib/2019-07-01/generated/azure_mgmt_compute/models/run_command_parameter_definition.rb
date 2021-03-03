# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_07_01
  module Models
    #
    # Describes the properties of a run command parameter.
    #
    class RunCommandParameterDefinition

      include MsRestAzure

      # @return [String] The run command parameter name.
      attr_accessor :name

      # @return [String] The run command parameter type.
      attr_accessor :type

      # @return [String] The run command parameter default value.
      attr_accessor :default_value

      # @return [Boolean] The run command parameter required. Default value:
      # false .
      attr_accessor :required


      #
      # Mapper for RunCommandParameterDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RunCommandParameterDefinition',
          type: {
            name: 'Composite',
            class_name: 'RunCommandParameterDefinition',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              default_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'defaultValue',
                type: {
                  name: 'String'
                }
              },
              required: {
                client_side_validation: true,
                required: false,
                serialized_name: 'required',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
