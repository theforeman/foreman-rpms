# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # Setting for SMB protocol
    #
    class SmbSetting

      include MsRestAzure

      # @return [Multichannel] Multichannel setting. Applies to Premium
      # FileStorage only.
      attr_accessor :multichannel

      # @return [String] SMB protocol versions supported by server. Valid
      # values are SMB2.1, SMB3.0, SMB3.1.1. Should be passed as a string with
      # delimiter ';'.
      attr_accessor :versions

      # @return [String] SMB authentication methods supported by server. Valid
      # values are NTLMv2, Kerberos. Should be passed as a string with
      # delimiter ';'.
      attr_accessor :authentication_methods

      # @return [String] Kerberos ticket encryption supported by server. Valid
      # values are RC4-HMAC, AES-256. Should be passed as a string with
      # delimiter ';'
      attr_accessor :kerberos_ticket_encryption

      # @return [String] SMB channel encryption supported by server. Valid
      # values are AES-128-CCM, AES-128-GCM, AES-256-GCM. Should be passed as a
      # string with delimiter ';'.
      attr_accessor :channel_encryption


      #
      # Mapper for SmbSetting class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SmbSetting',
          type: {
            name: 'Composite',
            class_name: 'SmbSetting',
            model_properties: {
              multichannel: {
                client_side_validation: true,
                required: false,
                serialized_name: 'multichannel',
                type: {
                  name: 'Composite',
                  class_name: 'Multichannel'
                }
              },
              versions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'versions',
                type: {
                  name: 'String'
                }
              },
              authentication_methods: {
                client_side_validation: true,
                required: false,
                serialized_name: 'authenticationMethods',
                type: {
                  name: 'String'
                }
              },
              kerberos_ticket_encryption: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kerberosTicketEncryption',
                type: {
                  name: 'String'
                }
              },
              channel_encryption: {
                client_side_validation: true,
                required: false,
                serialized_name: 'channelEncryption',
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
