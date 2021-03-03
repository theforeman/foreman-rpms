# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_12_01
  module Models
    #
    # Specifies information about the marketplace image used to create the
    # virtual machine. This element is only used for marketplace images. Before
    # you can use a marketplace image from an API, you must enable the image
    # for programmatic use.  In the Azure portal, find the marketplace image
    # that you want to use and then click **Want to deploy programmatically,
    # Get Started ->**. Enter any required information and then click **Save**.
    #
    class Plan

      include MsRestAzure

      # @return [String] The plan ID.
      attr_accessor :name

      # @return [String] The publisher ID.
      attr_accessor :publisher

      # @return [String] Specifies the product of the image from the
      # marketplace. This is the same value as Offer under the imageReference
      # element.
      attr_accessor :product

      # @return [String] The promotion code.
      attr_accessor :promotion_code


      #
      # Mapper for Plan class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Plan',
          type: {
            name: 'Composite',
            class_name: 'Plan',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                client_side_validation: true,
                required: false,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              product: {
                client_side_validation: true,
                required: false,
                serialized_name: 'product',
                type: {
                  name: 'String'
                }
              },
              promotion_code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'promotionCode',
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
