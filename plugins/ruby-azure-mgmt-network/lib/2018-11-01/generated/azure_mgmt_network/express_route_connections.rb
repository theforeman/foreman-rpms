# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_11_01
  #
  # ExpressRouteConnections
  #
  class ExpressRouteConnections
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ExpressRouteConnections class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NetworkManagementClient] reference to the NetworkManagementClient
    attr_reader :client

    #
    # Creates a connection between an ExpressRoute gateway and an ExpressRoute
    # circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the connection subresource.
    # @param put_express_route_connection_parameters [ExpressRouteConnection]
    # Parameters required in an ExpressRouteConnection PUT operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ExpressRouteConnection] operation results.
    #
    def create_or_update(resource_group_name, express_route_gateway_name, connection_name, put_express_route_connection_parameters, custom_headers:nil)
      response = create_or_update_async(resource_group_name, express_route_gateway_name, connection_name, put_express_route_connection_parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the connection subresource.
    # @param put_express_route_connection_parameters [ExpressRouteConnection]
    # Parameters required in an ExpressRouteConnection PUT operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_or_update_async(resource_group_name, express_route_gateway_name, connection_name, put_express_route_connection_parameters, custom_headers:nil)
      # Send request
      promise = begin_create_or_update_async(resource_group_name, express_route_gateway_name, connection_name, put_express_route_connection_parameters, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::Network::Mgmt::V2018_11_01::Models::ExpressRouteConnection.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets the specified ExpressRouteConnection.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the ExpressRoute connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ExpressRouteConnection] operation results.
    #
    def get(resource_group_name, express_route_gateway_name, connection_name, custom_headers:nil)
      response = get_async(resource_group_name, express_route_gateway_name, connection_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the specified ExpressRouteConnection.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the ExpressRoute connection.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, express_route_gateway_name, connection_name, custom_headers:nil)
      get_async(resource_group_name, express_route_gateway_name, connection_name, custom_headers:custom_headers).value!
    end

    #
    # Gets the specified ExpressRouteConnection.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the ExpressRoute connection.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, express_route_gateway_name, connection_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'express_route_gateway_name is nil' if express_route_gateway_name.nil?
      fail ArgumentError, 'connection_name is nil' if connection_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteGateways/{expressRouteGatewayName}/expressRouteConnections/{connectionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'expressRouteGatewayName' => express_route_gateway_name,'connectionName' => connection_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2018_11_01::Models::ExpressRouteConnection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes a connection to a ExpressRoute circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the connection subresource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    def delete(resource_group_name, express_route_gateway_name, connection_name, custom_headers:nil)
      response = delete_async(resource_group_name, express_route_gateway_name, connection_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the connection subresource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def delete_async(resource_group_name, express_route_gateway_name, connection_name, custom_headers:nil)
      # Send request
      promise = begin_delete_async(resource_group_name, express_route_gateway_name, connection_name, custom_headers:custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Lists ExpressRouteConnections.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ExpressRouteConnectionList] operation results.
    #
    def list(resource_group_name, express_route_gateway_name, custom_headers:nil)
      response = list_async(resource_group_name, express_route_gateway_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists ExpressRouteConnections.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, express_route_gateway_name, custom_headers:nil)
      list_async(resource_group_name, express_route_gateway_name, custom_headers:custom_headers).value!
    end

    #
    # Lists ExpressRouteConnections.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, express_route_gateway_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'express_route_gateway_name is nil' if express_route_gateway_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteGateways/{expressRouteGatewayName}/expressRouteConnections'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'expressRouteGatewayName' => express_route_gateway_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2018_11_01::Models::ExpressRouteConnectionList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Creates a connection between an ExpressRoute gateway and an ExpressRoute
    # circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the connection subresource.
    # @param put_express_route_connection_parameters [ExpressRouteConnection]
    # Parameters required in an ExpressRouteConnection PUT operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ExpressRouteConnection] operation results.
    #
    def begin_create_or_update(resource_group_name, express_route_gateway_name, connection_name, put_express_route_connection_parameters, custom_headers:nil)
      response = begin_create_or_update_async(resource_group_name, express_route_gateway_name, connection_name, put_express_route_connection_parameters, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates a connection between an ExpressRoute gateway and an ExpressRoute
    # circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the connection subresource.
    # @param put_express_route_connection_parameters [ExpressRouteConnection]
    # Parameters required in an ExpressRouteConnection PUT operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_or_update_with_http_info(resource_group_name, express_route_gateway_name, connection_name, put_express_route_connection_parameters, custom_headers:nil)
      begin_create_or_update_async(resource_group_name, express_route_gateway_name, connection_name, put_express_route_connection_parameters, custom_headers:custom_headers).value!
    end

    #
    # Creates a connection between an ExpressRoute gateway and an ExpressRoute
    # circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the connection subresource.
    # @param put_express_route_connection_parameters [ExpressRouteConnection]
    # Parameters required in an ExpressRouteConnection PUT operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_or_update_async(resource_group_name, express_route_gateway_name, connection_name, put_express_route_connection_parameters, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'express_route_gateway_name is nil' if express_route_gateway_name.nil?
      fail ArgumentError, 'connection_name is nil' if connection_name.nil?
      fail ArgumentError, 'put_express_route_connection_parameters is nil' if put_express_route_connection_parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::Network::Mgmt::V2018_11_01::Models::ExpressRouteConnection.mapper()
      request_content = @client.serialize(request_mapper,  put_express_route_connection_parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteGateways/{expressRouteGatewayName}/expressRouteConnections/{connectionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'expressRouteGatewayName' => express_route_gateway_name,'connectionName' => connection_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2018_11_01::Models::ExpressRouteConnection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Network::Mgmt::V2018_11_01::Models::ExpressRouteConnection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes a connection to a ExpressRoute circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the connection subresource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def begin_delete(resource_group_name, express_route_gateway_name, connection_name, custom_headers:nil)
      response = begin_delete_async(resource_group_name, express_route_gateway_name, connection_name, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes a connection to a ExpressRoute circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the connection subresource.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_delete_with_http_info(resource_group_name, express_route_gateway_name, connection_name, custom_headers:nil)
      begin_delete_async(resource_group_name, express_route_gateway_name, connection_name, custom_headers:custom_headers).value!
    end

    #
    # Deletes a connection to a ExpressRoute circuit.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param express_route_gateway_name [String] The name of the ExpressRoute
    # gateway.
    # @param connection_name [String] The name of the connection subresource.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_delete_async(resource_group_name, express_route_gateway_name, connection_name, custom_headers:nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'express_route_gateway_name is nil' if express_route_gateway_name.nil?
      fail ArgumentError, 'connection_name is nil' if connection_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteGateways/{expressRouteGatewayName}/expressRouteConnections/{connectionName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'expressRouteGatewayName' => express_route_gateway_name,'connectionName' => connection_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202 || status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
