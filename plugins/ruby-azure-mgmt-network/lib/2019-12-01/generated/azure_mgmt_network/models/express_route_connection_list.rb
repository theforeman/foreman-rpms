# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_12_01
  module Models
    #
    # ExpressRouteConnection list.
    #
    class ExpressRouteConnectionList

      include MsRestAzure

      # @return [Array<ExpressRouteConnection>] The list of ExpressRoute
      # connections.
      attr_accessor :value


      #
      # Mapper for ExpressRouteConnectionList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteConnectionList',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteConnectionList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExpressRouteConnectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteConnection'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
