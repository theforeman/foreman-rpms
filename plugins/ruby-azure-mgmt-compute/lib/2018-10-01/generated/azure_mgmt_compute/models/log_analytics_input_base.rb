# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_10_01
  module Models
    #
    # Api input base class for LogAnalytics Api.
    #
    class LogAnalyticsInputBase

      include MsRestAzure

      # @return [String] SAS Uri of the logging blob container to which
      # LogAnalytics Api writes output logs to.
      attr_accessor :blob_container_sas_uri

      # @return [DateTime] From time of the query
      attr_accessor :from_time

      # @return [DateTime] To time of the query
      attr_accessor :to_time

      # @return [Boolean] Group query result by Throttle Policy applied.
      attr_accessor :group_by_throttle_policy

      # @return [Boolean] Group query result by Operation Name.
      attr_accessor :group_by_operation_name

      # @return [Boolean] Group query result by Resource Name.
      attr_accessor :group_by_resource_name


      #
      # Mapper for LogAnalyticsInputBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LogAnalyticsInputBase',
          type: {
            name: 'Composite',
            class_name: 'LogAnalyticsInputBase',
            model_properties: {
              blob_container_sas_uri: {
                client_side_validation: true,
                required: true,
                serialized_name: 'blobContainerSasUri',
                type: {
                  name: 'String'
                }
              },
              from_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'fromTime',
                type: {
                  name: 'DateTime'
                }
              },
              to_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'toTime',
                type: {
                  name: 'DateTime'
                }
              },
              group_by_throttle_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupByThrottlePolicy',
                type: {
                  name: 'Boolean'
                }
              },
              group_by_operation_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupByOperationName',
                type: {
                  name: 'Boolean'
                }
              },
              group_by_resource_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupByResourceName',
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
