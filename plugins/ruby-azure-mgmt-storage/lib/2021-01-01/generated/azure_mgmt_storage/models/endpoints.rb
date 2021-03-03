# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # The URIs that are used to perform a retrieval of a public blob, queue,
    # table, web or dfs object.
    #
    class Endpoints

      include MsRestAzure

      # @return [String] Gets the blob endpoint.
      attr_accessor :blob

      # @return [String] Gets the queue endpoint.
      attr_accessor :queue

      # @return [String] Gets the table endpoint.
      attr_accessor :table

      # @return [String] Gets the file endpoint.
      attr_accessor :file

      # @return [String] Gets the web endpoint.
      attr_accessor :web

      # @return [String] Gets the dfs endpoint.
      attr_accessor :dfs

      # @return [StorageAccountMicrosoftEndpoints] Gets the microsoft routing
      # storage endpoints.
      attr_accessor :microsoft_endpoints

      # @return [StorageAccountInternetEndpoints] Gets the internet routing
      # storage endpoints
      attr_accessor :internet_endpoints


      #
      # Mapper for Endpoints class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Endpoints',
          type: {
            name: 'Composite',
            class_name: 'Endpoints',
            model_properties: {
              blob: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'blob',
                type: {
                  name: 'String'
                }
              },
              queue: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'queue',
                type: {
                  name: 'String'
                }
              },
              table: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'table',
                type: {
                  name: 'String'
                }
              },
              file: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'file',
                type: {
                  name: 'String'
                }
              },
              web: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'web',
                type: {
                  name: 'String'
                }
              },
              dfs: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'dfs',
                type: {
                  name: 'String'
                }
              },
              microsoft_endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'microsoftEndpoints',
                type: {
                  name: 'Composite',
                  class_name: 'StorageAccountMicrosoftEndpoints'
                }
              },
              internet_endpoints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'internetEndpoints',
                type: {
                  name: 'Composite',
                  class_name: 'StorageAccountInternetEndpoints'
                }
              }
            }
          }
        }
      end
    end
  end
end
