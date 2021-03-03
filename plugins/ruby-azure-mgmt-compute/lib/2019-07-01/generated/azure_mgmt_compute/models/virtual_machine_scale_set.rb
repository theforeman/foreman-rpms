# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2019_07_01
  module Models
    #
    # Describes a Virtual Machine Scale Set.
    #
    class VirtualMachineScaleSet < Resource

      include MsRestAzure

      # @return [Sku] The virtual machine scale set sku.
      attr_accessor :sku

      # @return [Plan] Specifies information about the marketplace image used
      # to create the virtual machine. This element is only used for
      # marketplace images. Before you can use a marketplace image from an API,
      # you must enable the image for programmatic use.  In the Azure portal,
      # find the marketplace image that you want to use and then click **Want
      # to deploy programmatically, Get Started ->**. Enter any required
      # information and then click **Save**.
      attr_accessor :plan

      # @return [UpgradePolicy] The upgrade policy.
      attr_accessor :upgrade_policy

      # @return [AutomaticRepairsPolicy] Policy for automatic repairs.
      attr_accessor :automatic_repairs_policy

      # @return [VirtualMachineScaleSetVMProfile] The virtual machine profile.
      attr_accessor :virtual_machine_profile

      # @return [String] The provisioning state, which only appears in the
      # response.
      attr_accessor :provisioning_state

      # @return [Boolean] Specifies whether the Virtual Machine Scale Set
      # should be overprovisioned.
      attr_accessor :overprovision

      # @return [Boolean] When Overprovision is enabled, extensions are
      # launched only on the requested number of VMs which are finally kept.
      # This property will hence ensure that the extensions do not run on the
      # extra overprovisioned VMs.
      attr_accessor :do_not_run_extensions_on_overprovisioned_vms

      # @return [String] Specifies the ID which uniquely identifies a Virtual
      # Machine Scale Set.
      attr_accessor :unique_id

      # @return [Boolean] When true this limits the scale set to a single
      # placement group, of max size 100 virtual machines.
      attr_accessor :single_placement_group

      # @return [Boolean] Whether to force strictly even Virtual Machine
      # distribution cross x-zones in case there is zone outage.
      attr_accessor :zone_balance

      # @return [Integer] Fault Domain count for each placement group.
      attr_accessor :platform_fault_domain_count

      # @return [SubResource] Specifies information about the proximity
      # placement group that the virtual machine scale set should be assigned
      # to. <br><br>Minimum api-version: 2018-04-01.
      attr_accessor :proximity_placement_group

      # @return [AdditionalCapabilities] Specifies additional capabilities
      # enabled or disabled on the Virtual Machines in the Virtual Machine
      # Scale Set. For instance: whether the Virtual Machines have the
      # capability to support attaching managed data disks with UltraSSD_LRS
      # storage account type.
      attr_accessor :additional_capabilities

      # @return [ScaleInPolicy] Specifies the scale-in policy that decides
      # which virtual machines are chosen for removal when a Virtual Machine
      # Scale Set is scaled-in.
      attr_accessor :scale_in_policy

      # @return [VirtualMachineScaleSetIdentity] The identity of the virtual
      # machine scale set, if configured.
      attr_accessor :identity

      # @return [Array<String>] The virtual machine scale set zones.
      attr_accessor :zones


      #
      # Mapper for VirtualMachineScaleSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualMachineScaleSet',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSet',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
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
              sku: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              plan: {
                client_side_validation: true,
                required: false,
                serialized_name: 'plan',
                type: {
                  name: 'Composite',
                  class_name: 'Plan'
                }
              },
              upgrade_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.upgradePolicy',
                type: {
                  name: 'Composite',
                  class_name: 'UpgradePolicy'
                }
              },
              automatic_repairs_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.automaticRepairsPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'AutomaticRepairsPolicy'
                }
              },
              virtual_machine_profile: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualMachineProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetVMProfile'
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
              overprovision: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.overprovision',
                type: {
                  name: 'Boolean'
                }
              },
              do_not_run_extensions_on_overprovisioned_vms: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.doNotRunExtensionsOnOverprovisionedVMs',
                type: {
                  name: 'Boolean'
                }
              },
              unique_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.uniqueId',
                type: {
                  name: 'String'
                }
              },
              single_placement_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.singlePlacementGroup',
                type: {
                  name: 'Boolean'
                }
              },
              zone_balance: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.zoneBalance',
                type: {
                  name: 'Boolean'
                }
              },
              platform_fault_domain_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.platformFaultDomainCount',
                type: {
                  name: 'Number'
                }
              },
              proximity_placement_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.proximityPlacementGroup',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              additional_capabilities: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.additionalCapabilities',
                type: {
                  name: 'Composite',
                  class_name: 'AdditionalCapabilities'
                }
              },
              scale_in_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scaleInPolicy',
                type: {
                  name: 'Composite',
                  class_name: 'ScaleInPolicy'
                }
              },
              identity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetIdentity'
                }
              },
              zones: {
                client_side_validation: true,
                required: false,
                serialized_name: 'zones',
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
              }
            }
          }
        }
      end
    end
  end
end
