# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_08_01
  module Models
    #
    # List of ExpressRoute gateways.
    #
    class ExpressRouteGatewayList

      include MsRestAzure

      # @return [Array<ExpressRouteGateway>] List of ExpressRoute gateways.
      attr_accessor :value


      #
      # Mapper for ExpressRouteGatewayList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteGatewayList',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteGatewayList',
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
                      serialized_name: 'ExpressRouteGatewayElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRouteGateway'
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
