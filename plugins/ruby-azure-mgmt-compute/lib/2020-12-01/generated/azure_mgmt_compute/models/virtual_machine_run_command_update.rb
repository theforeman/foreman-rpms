# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_12_01
  module Models
    #
    # Describes a Virtual Machine run command.
    #
    class VirtualMachineRunCommandUpdate < UpdateResource

      include MsRestAzure

      # @return [VirtualMachineRunCommandScriptSource] The source of the run
      # command script.
      attr_accessor :source

      # @return [Array<RunCommandInputParameter>] The parameters used by the
      # script.
      attr_accessor :parameters

      # @return [Array<RunCommandInputParameter>] The parameters used by the
      # script.
      attr_accessor :protected_parameters

      # @return [Boolean] Optional. If set to true, provisioning will complete
      # as soon as the script starts and will not wait for script to complete.
      # Default value: false .
      attr_accessor :async_execution

      # @return [String] Specifies the user account on the VM when executing
      # the run command.
      attr_accessor :run_as_user

      # @return [String] Specifies the user account password on the VM when
      # executing the run command.
      attr_accessor :run_as_password

      # @return [Integer] The timeout in seconds to execute the run command.
      attr_accessor :timeout_in_seconds

      # @return [String] Specifies the Azure storage blob where script output
      # stream will be uploaded.
      attr_accessor :output_blob_uri

      # @return [String] Specifies the Azure storage blob where script error
      # stream will be uploaded.
      attr_accessor :error_blob_uri

      # @return [String] The provisioning state, which only appears in the
      # response.
      attr_accessor :provisioning_state

      # @return [VirtualMachineRunCommandInstanceView] The virtual machine run
      # command instance view.
      attr_accessor :instance_view


      #
      # Mapper for VirtualMachineRunCommandUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineRunCommandUpdate',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineRunCommandUpdate',
            model_properties: {
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.source',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineRunCommandScriptSource'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RunCommandInputParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RunCommandInputParameter'
                      }
                  }
                }
              },
              protected_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.protectedParameters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RunCommandInputParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RunCommandInputParameter'
                      }
                  }
                }
              },
              async_execution: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.asyncExecution',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              },
              run_as_user: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.runAsUser',
                type: {
                  name: 'String'
                }
              },
              run_as_password: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.runAsPassword',
                type: {
                  name: 'String'
                }
              },
              timeout_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.timeoutInSeconds',
                type: {
                  name: 'Number'
                }
              },
              output_blob_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.outputBlobUri',
                type: {
                  name: 'String'
                }
              },
              error_blob_uri: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.errorBlobUri',
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
              instance_view: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.instanceView',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineRunCommandInstanceView'
                }
              }
            }
          }
        }
      end
    end
  end
end
