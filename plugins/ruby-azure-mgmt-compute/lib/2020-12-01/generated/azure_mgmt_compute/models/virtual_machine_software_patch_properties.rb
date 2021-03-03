# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_12_01
  module Models
    #
    # Describes the properties of a Virtual Machine software patch.
    #
    class VirtualMachineSoftwarePatchProperties

      include MsRestAzure

      # @return [String] A unique identifier for the patch.
      attr_accessor :patch_id

      # @return [String] The friendly name of the patch.
      attr_accessor :name

      # @return [String] The version number of the patch. This property applies
      # only to Linux patches.
      attr_accessor :version

      # @return [String] The KBID of the patch. Only applies to Windows
      # patches.
      attr_accessor :kb_id

      # @return [Array<String>] The classification(s) of the patch as provided
      # by the patch publisher.
      attr_accessor :classifications

      # @return [VMGuestPatchRebootBehavior] Describes the reboot requirements
      # of the patch. Possible values include: 'Unknown', 'NeverReboots',
      # 'AlwaysRequiresReboot', 'CanRequestReboot'
      attr_accessor :reboot_behavior

      # @return [String] The activity ID of the operation that produced this
      # result. It is used to correlate across CRP and extension logs.
      attr_accessor :activity_id

      # @return [DateTime] The UTC timestamp when the repository published this
      # patch.
      attr_accessor :published_date

      # @return [DateTime] The UTC timestamp of the last update to this patch
      # record.
      attr_accessor :last_modified_date_time

      # @return [PatchAssessmentState] Describes the availability of a given
      # patch. Possible values include: 'Unknown', 'Available'
      attr_accessor :assessment_state


      #
      # Mapper for VirtualMachineSoftwarePatchProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineSoftwarePatchProperties',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineSoftwarePatchProperties',
            model_properties: {
              patch_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'patchId',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              },
              kb_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'kbId',
                type: {
                  name: 'String'
                }
              },
              classifications: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'classifications',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              reboot_behavior: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'rebootBehavior',
                type: {
                  name: 'String'
                }
              },
              activity_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'activityId',
                type: {
                  name: 'String'
                }
              },
              published_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'publishedDate',
                type: {
                  name: 'DateTime'
                }
              },
              last_modified_date_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastModifiedDateTime',
                type: {
                  name: 'DateTime'
                }
              },
              assessment_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'assessmentState',
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
