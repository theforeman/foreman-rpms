# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_12_01
  module Models
    #
    # Contains information about SSH certificate public key and the path on the
    # Linux VM where the public key is placed.
    #
    class SshPublicKey

      include MsRestAzure

      # @return [String] Specifies the full path on the created VM where ssh
      # public key is stored. If the file already exists, the specified key is
      # appended to the file. Example: /home/user/.ssh/authorized_keys
      attr_accessor :path

      # @return [String] SSH public key certificate used to authenticate with
      # the VM through ssh. The key needs to be at least 2048-bit and in
      # ssh-rsa format. <br><br> For creating ssh keys, see [Create SSH keys on
      # Linux and Mac for Linux VMs in
      # Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-mac-create-ssh-keys?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json).
      attr_accessor :key_data


      #
      # Mapper for SshPublicKey class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SshPublicKey',
          type: {
            name: 'Composite',
            class_name: 'SshPublicKey',
            model_properties: {
              path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'path',
                type: {
                  name: 'String'
                }
              },
              key_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyData',
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
