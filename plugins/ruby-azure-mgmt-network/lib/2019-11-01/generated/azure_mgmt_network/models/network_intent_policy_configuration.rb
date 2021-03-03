# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_11_01
  module Models
    #
    # Details of NetworkIntentPolicyConfiguration for
    # PrepareNetworkPoliciesRequest.
    #
    class NetworkIntentPolicyConfiguration

      include MsRestAzure

      # @return [String] The name of the Network Intent Policy for storing in
      # target subscription.
      attr_accessor :network_intent_policy_name

      # @return [NetworkIntentPolicy] Source network intent policy.
      attr_accessor :source_network_intent_policy


      #
      # Mapper for NetworkIntentPolicyConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkIntentPolicyConfiguration',
          type: {
            name: 'Composite',
            class_name: 'NetworkIntentPolicyConfiguration',
            model_properties: {
              network_intent_policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'networkIntentPolicyName',
                type: {
                  name: 'String'
                }
              },
              source_network_intent_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceNetworkIntentPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkIntentPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
