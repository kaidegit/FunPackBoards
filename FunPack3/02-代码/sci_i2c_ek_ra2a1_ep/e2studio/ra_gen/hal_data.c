/* generated HAL source file - do not edit */
#include "hal_data.h"
/* Macros to tie dynamic ELC links to ADC_TRIGGER_SYNC_ELC option in adc_trigger_t. */
#define ADC_TRIGGER_ADC0        ADC_TRIGGER_SYNC_ELC
#define ADC_TRIGGER_ADC0_B      ADC_TRIGGER_SYNC_ELC
#define ADC_TRIGGER_ADC1        ADC_TRIGGER_SYNC_ELC
#define ADC_TRIGGER_ADC1_B      ADC_TRIGGER_SYNC_ELC
adc_instance_ctrl_t g_adc0_ctrl;
const adc_extended_cfg_t g_adc0_cfg_extend =
{ .add_average_count = ADC_ADD_OFF,
  .clearing = ADC_CLEAR_AFTER_READ_ON,
  .trigger_group_b = ADC_TRIGGER_SYNC_ELC,
  .double_trigger_mode = ADC_DOUBLE_TRIGGER_DISABLED,
  .adc_vref_control = ADC_VREF_CONTROL_VREFH, };
const adc_cfg_t g_adc0_cfg =
{ .unit = 0,
  .mode = ADC_MODE_SINGLE_SCAN,
  .resolution = ADC_RESOLUTION_16_BIT,
  .alignment = (adc_alignment_t) (0),
  .trigger = ADC_TRIGGER_SOFTWARE,
  .p_callback = NULL,
  .p_context = NULL,
  .p_extend = &g_adc0_cfg_extend,
#if defined(VECTOR_NUMBER_ADC0_SCAN_END)
    .scan_end_irq        = VECTOR_NUMBER_ADC0_SCAN_END,
#else
  .scan_end_irq = FSP_INVALID_VECTOR,
#endif
  .scan_end_ipl = (BSP_IRQ_DISABLED),
#if defined(VECTOR_NUMBER_ADC0_SCAN_END_B)
    .scan_end_b_irq      = VECTOR_NUMBER_ADC0_SCAN_END_B,
#else
  .scan_end_b_irq = FSP_INVALID_VECTOR,
#endif
  .scan_end_b_ipl = (BSP_IRQ_DISABLED), };
const adc_channel_cfg_t g_adc0_channel_cfg =
        { .scan_mask = ADC_MASK_CHANNEL_0 | ADC_MASK_CHANNEL_3 | ADC_MASK_CHANNEL_6 | ADC_MASK_CHANNEL_22
                | ADC_MASK_CHANNEL_23 | 0,
          .scan_mask_group_b = 0, .priority_group_a = ADC_GROUP_A_PRIORITY_OFF, .add_mask = 0, .sample_hold_mask = 0, .sample_hold_states =
                  24, };
/* Instance structure to use this module. */
const adc_instance_t g_adc0 =
{ .p_ctrl = &g_adc0_ctrl, .p_cfg = &g_adc0_cfg, .p_channel_cfg = &g_adc0_channel_cfg, .p_api = &g_adc_on_adc };
void g_hal_init(void)
{
    g_common_init ();
}
