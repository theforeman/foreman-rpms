# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_12_01
  module Models
    #
    # Specifies the Linux operating system settings on the virtual machine.
    # <br><br>For a list of supported Linux distributions, see [Linux on
    # Azure-Endorsed
    # Distributions](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-endorsed-distros?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json)
    # <br><br> For running non-endorsed distributions, see [Information for
    # Non-Endorsed
    # Distributions](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-create-upload-generic?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json).
    #
    class LinuxConfiguration

      include MsRestAzure

      # @return [Boolean] Specifies whether password authentication should be
      # disabled.
      attr_accessor :disable_password_authentication

      # @return [SshConfiguration] Specifies the ssh key configuration for a
      # Linux OS.
      attr_accessor :ssh

      # @return [Boolean] Indicates whether virtual machine agent should be
      # provisioned on the virtual machine. <br><br> When this property is not
      # specified in the request body, default behavior is to set it to true.
      # This will ensure that VM Agent is installed on the VM so that
      # extensions can be added to the VM later.
      attr_accessor :provision_vmagent


      #
      # Mapper for LinuxConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LinuxConfiguration',
          type: {
            name: 'Composite',
            class_name: 'LinuxConfiguration',
            model_properties: {
              disable_password_authentication: {
                client_side_validation: true,
                required: false,
                serialized_name: 'disablePasswordAuthentication',
                type: {
                  name: 'Boolean'
                }
              },
              ssh: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ssh',
                type: {
                  name: 'Composite',
                  class_name: 'SshConfiguration'
                }
              },
              provision_vmagent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provisionVMAgent',
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
