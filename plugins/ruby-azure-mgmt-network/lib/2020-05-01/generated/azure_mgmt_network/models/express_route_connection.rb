# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2020_05_01
  module Models
    #
    # ExpressRouteConnection resource.
    #
    class ExpressRouteConnection < SubResource

      include MsRestAzure

      # @return [ProvisioningState] The provisioning state of the express route
      # connection resource. Possible values include: 'Succeeded', 'Updating',
      # 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [ExpressRouteCircuitPeeringId] The ExpressRoute circuit
      # peering.
      attr_accessor :express_route_circuit_peering

      # @return [String] Authorization key to establish the connection.
      attr_accessor :authorization_key

      # @return [Integer] The routing weight associated to the connection.
      attr_accessor :routing_weight

      # @return [Boolean] Enable internet security.
      attr_accessor :enable_internet_security

      # @return [RoutingConfiguration] The Routing Configuration indicating the
      # associated and propagated route tables on this connection.
      attr_accessor :routing_configuration

      # @return [String] The name of the resource.
      attr_accessor :name


      #
      # Mapper for ExpressRouteConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRouteConnection',
          type: {
            name: 'Composite',
            class_name: 'ExpressRouteConnection',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              express_route_circuit_peering: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.expressRouteCircuitPeering',
                type: {
                  name: 'Composite',
                  class_name: 'ExpressRouteCircuitPeeringId'
                }
              },
              authorization_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.authorizationKey',
                type: {
                  name: 'String'
                }
              },
              routing_weight: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.routingWeight',
                type: {
                  name: 'Number'
                }
              },
              enable_internet_security: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.enableInternetSecurity',
                type: {
                  name: 'Boolean'
                }
              },
              routing_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.routingConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'RoutingConfiguration'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
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
