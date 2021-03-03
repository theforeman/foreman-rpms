# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2019_03_01
  module Models
    #
    # Result of the request to calculate template hash. It contains a string of
    # minified template and its hash.
    #
    class TemplateHashResult

      include MsRestAzure

      # @return [String] The minified template string.
      attr_accessor :minified_template

      # @return [String] The template hash.
      attr_accessor :template_hash


      #
      # Mapper for TemplateHashResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TemplateHashResult',
          type: {
            name: 'Composite',
            class_name: 'TemplateHashResult',
            model_properties: {
              minified_template: {
                client_side_validation: true,
                required: false,
                serialized_name: 'minifiedTemplate',
                type: {
                  name: 'String'
                }
              },
              template_hash: {
                client_side_validation: true,
                required: false,
                serialized_name: 'templateHash',
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
