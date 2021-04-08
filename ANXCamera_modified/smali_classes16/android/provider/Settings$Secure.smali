.class public final Landroid/provider/Settings$Secure;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Secure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$Secure$UserSetupPersonalization;
    }
.end annotation


# static fields
.field public static final ACCESSIBILITY_AUTOCLICK_DELAY:Ljava/lang/String; = "accessibility_autoclick_delay"

.field private static final ACCESSIBILITY_AUTOCLICK_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_AUTOCLICK_ENABLED:Ljava/lang/String; = "accessibility_autoclick_enabled"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final ACCESSIBILITY_AUTOCLICK_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_BUTTON_TARGET_COMPONENT:Ljava/lang/String; = "accessibility_button_target_component"

.field private static final ACCESSIBILITY_BUTTON_TARGET_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_background_color"

.field private static final ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_EDGE_COLOR:Ljava/lang/String; = "accessibility_captioning_edge_color"

.field private static final ACCESSIBILITY_CAPTIONING_EDGE_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_EDGE_TYPE:Ljava/lang/String; = "accessibility_captioning_edge_type"

.field private static final ACCESSIBILITY_CAPTIONING_EDGE_TYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_ENABLED:Ljava/lang/String; = "accessibility_captioning_enabled"

.field private static final ACCESSIBILITY_CAPTIONING_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_FONT_SCALE:Ljava/lang/String; = "accessibility_captioning_font_scale"

.field private static final ACCESSIBILITY_CAPTIONING_FONT_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR:Ljava/lang/String; = "accessibility_captioning_foreground_color"

.field private static final ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_LOCALE:Ljava/lang/String; = "accessibility_captioning_locale"

.field private static final ACCESSIBILITY_CAPTIONING_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_PRESET:Ljava/lang/String; = "accessibility_captioning_preset"

.field private static final ACCESSIBILITY_CAPTIONING_PRESET_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_TYPEFACE:Ljava/lang/String; = "accessibility_captioning_typeface"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final ACCESSIBILITY_CAPTIONING_TYPEFACE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_CAPTIONING_WINDOW_COLOR:Ljava/lang/String; = "accessibility_captioning_window_color"

.field private static final ACCESSIBILITY_CAPTIONING_WINDOW_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER:Ljava/lang/String; = "accessibility_display_daltonizer"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED:Ljava/lang/String; = "accessibility_display_daltonizer_enabled"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field private static final ACCESSIBILITY_DISPLAY_DALTONIZER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_INVERSION_ENABLED:Ljava/lang/String; = "accessibility_display_inversion_enabled"

.field private static final ACCESSIBILITY_DISPLAY_INVERSION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_AUTO_UPDATE:Ljava/lang/String; = "accessibility_display_magnification_auto_update"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_enabled"

.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED:Ljava/lang/String; = "accessibility_display_magnification_navbar_enabled"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE:Ljava/lang/String; = "accessibility_display_magnification_scale"

.field private static final ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_ENABLED:Ljava/lang/String; = "accessibility_enabled"

.field private static final ACCESSIBILITY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED:Ljava/lang/String; = "high_text_contrast_enabled"

.field private static final ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_INTERACTIVE_UI_TIMEOUT_MS:Ljava/lang/String; = "accessibility_interactive_ui_timeout_ms"

.field public static final ACCESSIBILITY_LARGE_POINTER_ICON:Ljava/lang/String; = "accessibility_large_pointer_icon"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final ACCESSIBILITY_LARGE_POINTER_ICON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_NON_INTERACTIVE_UI_TIMEOUT_MS:Ljava/lang/String; = "accessibility_non_interactive_ui_timeout_ms"

.field public static final ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN:Ljava/lang/String; = "accessibility_shortcut_dialog_shown"

.field private static final ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SHORTCUT_ENABLED:Ljava/lang/String; = "accessibility_shortcut_enabled"

.field private static final ACCESSIBILITY_SHORTCUT_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN:Ljava/lang/String; = "accessibility_shortcut_on_lock_screen"

.field private static final ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SHORTCUT_TARGET_SERVICE:Ljava/lang/String; = "accessibility_shortcut_target_service"

.field private static final ACCESSIBILITY_SHORTCUT_TARGET_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ACCESSIBILITY_SOFT_KEYBOARD_MODE:Ljava/lang/String; = "accessibility_soft_keyboard_mode"

.field public static final ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String; = "speak_password"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ALLOWED_GEOLOCATION_ORIGINS:Ljava/lang/String; = "allowed_geolocation_origins"

.field public static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "mock_location"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ALLOW_MOCK_LOCATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ALWAYS_ON_VPN_APP:Ljava/lang/String; = "always_on_vpn_app"

.field public static final ALWAYS_ON_VPN_LOCKDOWN:Ljava/lang/String; = "always_on_vpn_lockdown"

.field public static final ALWAYS_ON_VPN_LOCKDOWN_WHITELIST:Ljava/lang/String; = "always_on_vpn_lockdown_whitelist"

.field public static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field public static final ANR_SHOW_BACKGROUND:Ljava/lang/String; = "anr_show_background"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final ASSISTANT:Ljava/lang/String; = "assistant"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final ASSIST_DISCLOSURE_ENABLED:Ljava/lang/String; = "assist_disclosure_enabled"

.field public static final ASSIST_GESTURE_ENABLED:Ljava/lang/String; = "assist_gesture_enabled"

.field private static final ASSIST_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ASSIST_GESTURE_SENSITIVITY:Ljava/lang/String; = "assist_gesture_sensitivity"

.field public static final ASSIST_GESTURE_SETUP_COMPLETE:Ljava/lang/String; = "assist_gesture_setup_complete"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ASSIST_GESTURE_SILENCE_ALERTS_ENABLED:Ljava/lang/String; = "assist_gesture_silence_alerts_enabled"

.field private static final ASSIST_GESTURE_SILENCE_ALERTS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ASSIST_GESTURE_WAKE_ENABLED:Ljava/lang/String; = "assist_gesture_wake_enabled"

.field private static final ASSIST_GESTURE_WAKE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ASSIST_SCREENSHOT_ENABLED:Ljava/lang/String; = "assist_screenshot_enabled"

.field public static final ASSIST_STRUCTURE_ENABLED:Ljava/lang/String; = "assist_structure_enabled"

.field public static final AUTOFILL_FEATURE_FIELD_CLASSIFICATION:Ljava/lang/String; = "autofill_field_classification"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_SERVICE:Ljava/lang/String; = "autofill_service"

.field public static final AUTOFILL_SERVICE_SEARCH_URI:Ljava/lang/String; = "autofill_service_search_uri"

.field private static final AUTOFILL_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final AUTOFILL_USER_DATA_MAX_CATEGORY_COUNT:Ljava/lang/String; = "autofill_user_data_max_category_count"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_USER_DATA_MAX_FIELD_CLASSIFICATION_IDS_SIZE:Ljava/lang/String; = "autofill_user_data_max_field_classification_size"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_USER_DATA_MAX_USER_DATA_SIZE:Ljava/lang/String; = "autofill_user_data_max_user_data_size"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_USER_DATA_MAX_VALUE_LENGTH:Ljava/lang/String; = "autofill_user_data_max_value_length"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOFILL_USER_DATA_MIN_VALUE_LENGTH:Ljava/lang/String; = "autofill_user_data_min_value_length"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AUTOMATIC_STORAGE_MANAGER_BYTES_CLEARED:Ljava/lang/String; = "automatic_storage_manager_bytes_cleared"

.field public static final AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN:Ljava/lang/String; = "automatic_storage_manager_days_to_retain"

.field public static final AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_DEFAULT:I = 0x5a

.field private static final AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final AUTOMATIC_STORAGE_MANAGER_ENABLED:Ljava/lang/String; = "automatic_storage_manager_enabled"

.field public static final AUTOMATIC_STORAGE_MANAGER_LAST_RUN:Ljava/lang/String; = "automatic_storage_manager_last_run"

.field public static final AUTOMATIC_STORAGE_MANAGER_TURNED_OFF_BY_POLICY:Ljava/lang/String; = "automatic_storage_manager_turned_off_by_policy"

.field public static final AWARE_ENABLED:Ljava/lang/String; = "aware_enabled"

.field private static final AWARE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final AWARE_LOCK_ENABLED:Ljava/lang/String; = "aware_lock_enabled"

.field private static final AWARE_LOCK_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final BACKGROUND_DATA:Ljava/lang/String; = "background_data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BACKUP_AUTO_RESTORE:Ljava/lang/String; = "backup_auto_restore"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final BACKUP_ENABLED:Ljava/lang/String; = "backup_enabled"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final BACKUP_LOCAL_TRANSPORT_PARAMETERS:Ljava/lang/String; = "backup_local_transport_parameters"

.field public static final BACKUP_MANAGER_CONSTANTS:Ljava/lang/String; = "backup_manager_constants"

.field public static final BACKUP_PROVISIONED:Ljava/lang/String; = "backup_provisioned"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final BACKUP_TRANSPORT:Ljava/lang/String; = "backup_transport"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final BIOMETRIC_DEBUG_ENABLED:Ljava/lang/String; = "biometric_debug_enabled"

.field public static final BLUETOOTH_ON:Ljava/lang/String; = "bluetooth_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final BLUETOOTH_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final BLUETOOTH_ON_WHILE_DRIVING:Ljava/lang/String; = "bluetooth_on_while_driving"

.field public static final BUGREPORT_IN_POWER_MENU:Ljava/lang/String; = "bugreport_in_power_menu"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final BUGREPORT_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CALL_SCREENING_DEFAULT_COMPONENT:Ljava/lang/String; = "call_screening_default_component"

.field public static final CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED:Ljava/lang/String; = "camera_double_tap_power_gesture_disabled"

.field private static final CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED:Ljava/lang/String; = "camera_double_twist_to_flip_enabled"

.field private static final CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CAMERA_GESTURE_DISABLED:Ljava/lang/String; = "camera_gesture_disabled"

.field private static final CAMERA_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final CAMERA_LIFT_TRIGGER_ENABLED:Ljava/lang/String; = "camera_lift_trigger_enabled"

.field public static final CAMERA_LIFT_TRIGGER_ENABLED_DEFAULT:I = 0x1

.field public static final CARRIER_APPS_HANDLED:Ljava/lang/String; = "carrier_apps_handled"

.field public static final CHARGING_SOUNDS_ENABLED:Ljava/lang/String; = "charging_sounds_enabled"

.field public static final CHARGING_VIBRATION_ENABLED:Ljava/lang/String; = "charging_vibration_enabled"

.field private static final CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CMAS_ADDITIONAL_BROADCAST_PKG:Ljava/lang/String; = "cmas_additional_broadcast_pkg"

.field public static final COMPLETED_CATEGORY_PREFIX:Ljava/lang/String; = "suggested.completed_category."
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONNECTIVITY_RELEASE_PENDING_INTENT_DELAY_MS:Ljava/lang/String; = "connectivity_release_pending_intent_delay_ms"

.field public static final CONTENT_CAPTURE_ENABLED:Ljava/lang/String; = "content_capture_enabled"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CROSS_PROFILE_CALENDAR_ENABLED:Ljava/lang/String; = "cross_profile_calendar_enabled"

.field public static final DARK_MODE_DIALOG_SEEN:Ljava/lang/String; = "dark_mode_dialog_seen"

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_INPUT_METHOD:Ljava/lang/String; = "default_input_method"

.field public static final DEVELOPMENT_SETTINGS_ENABLED:Ljava/lang/String; = "development_settings_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE_PAIRED:Ljava/lang/String; = "device_paired"

.field public static final DEVICE_PROVISIONED:Ljava/lang/String; = "device_provisioned"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DIALER_DEFAULT_APPLICATION:Ljava/lang/String; = "dialer_default_application"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final DISABLED_PRINT_SERVICES:Ljava/lang/String; = "disabled_print_services"

.field public static final DISABLED_SYSTEM_INPUT_METHODS:Ljava/lang/String; = "disabled_system_input_methods"

.field public static final DISPLAY_DENSITY_FORCED:Ljava/lang/String; = "display_density_forced"

.field public static final DISPLAY_WHITE_BALANCE_ENABLED:Ljava/lang/String; = "display_white_balance_enabled"

.field private static final DISPLAY_WHITE_BALANCE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOCKED_CLOCK_FACE:Ljava/lang/String; = "docked_clock_face"

.field public static final DOUBLE_TAP_TO_WAKE:Ljava/lang/String; = "double_tap_to_wake"

.field private static final DOUBLE_TAP_TO_WAKE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOZE_ALWAYS_ON:Ljava/lang/String; = "doze_always_on"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final DOZE_ALWAYS_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOZE_DOUBLE_TAP_GESTURE:Ljava/lang/String; = "doze_pulse_on_double_tap"

.field private static final DOZE_DOUBLE_TAP_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOZE_ENABLED:Ljava/lang/String; = "doze_enabled"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final DOZE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOZE_PICK_UP_GESTURE:Ljava/lang/String; = "doze_pulse_on_pick_up"

.field private static final DOZE_PICK_UP_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOZE_PULSE_ON_LONG_PRESS:Ljava/lang/String; = "doze_pulse_on_long_press"

.field public static final DOZE_TAP_SCREEN_GESTURE:Ljava/lang/String; = "doze_tap_gesture"

.field private static final DOZE_TAP_SCREEN_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final DOZE_WAKE_SCREEN_GESTURE:Ljava/lang/String; = "doze_wake_screen_gesture"

.field private static final DOZE_WAKE_SCREEN_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final EMERGENCY_ASSISTANCE_APPLICATION:Ljava/lang/String; = "emergency_assistance_application"

.field public static final ENABLED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "enabled_accessibility_services"

.field private static final ENABLED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENABLED_INPUT_METHODS:Ljava/lang/String; = "enabled_input_methods"

.field public static final ENABLED_NOTIFICATION_ASSISTANT:Ljava/lang/String; = "enabled_notification_assistant"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLED_NOTIFICATION_ASSISTANT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLED_NOTIFICATION_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES:Ljava/lang/String; = "enabled_notification_policy_access_packages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENABLED_PRINT_SERVICES:Ljava/lang/String; = "enabled_print_services"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final ENABLED_VR_LISTENERS:Ljava/lang/String; = "enabled_vr_listeners"

.field private static final ENABLED_VR_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ENHANCED_VOICE_PRIVACY_ENABLED:Ljava/lang/String; = "enhanced_voice_privacy_enabled"

.field private static final ENHANCED_VOICE_PRIVACY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION:Ljava/lang/String; = "face_unlock_always_require_confirmation"

.field private static final FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final FACE_UNLOCK_APP_ENABLED:Ljava/lang/String; = "face_unlock_app_enabled"

.field private static final FACE_UNLOCK_APP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final FACE_UNLOCK_ATTENTION_REQUIRED:Ljava/lang/String; = "face_unlock_attention_required"

.field public static final FACE_UNLOCK_DISMISSES_KEYGUARD:Ljava/lang/String; = "face_unlock_dismisses_keyguard"

.field private static final FACE_UNLOCK_DISMISSES_KEYGUARD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final FACE_UNLOCK_DIVERSITY_REQUIRED:Ljava/lang/String; = "face_unlock_diversity_required"

.field public static final FACE_UNLOCK_EDUCATION_INFO_DISPLAYED:Ljava/lang/String; = "face_unlock_education_info_displayed"

.field private static final FACE_UNLOCK_EDUCATION_INFO_DISPLAYED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final FACE_UNLOCK_KEYGUARD_ENABLED:Ljava/lang/String; = "face_unlock_keyguard_enabled"

.field private static final FACE_UNLOCK_KEYGUARD_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final FLASHLIGHT_AVAILABLE:Ljava/lang/String; = "flashlight_available"

.field public static final FLASHLIGHT_ENABLED:Ljava/lang/String; = "flashlight_enabled"

.field public static final GLOBAL_ACTIONS_PANEL_AVAILABLE:Ljava/lang/String; = "global_actions_panel_available"

.field public static final GLOBAL_ACTIONS_PANEL_DEBUG_ENABLED:Ljava/lang/String; = "global_actions_panel_debug_enabled"

.field public static final GLOBAL_ACTIONS_PANEL_ENABLED:Ljava/lang/String; = "global_actions_panel_enabled"

.field private static final GLOBAL_ACTIONS_PANEL_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final HTTP_PROXY:Ljava/lang/String; = "http_proxy"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HUSH_GESTURE_USED:Ljava/lang/String; = "hush_gesture_used"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final HUSH_GESTURE_USED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final IMMERSIVE_MODE_CONFIRMATIONS:Ljava/lang/String; = "immersive_mode_confirmations"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final INCALL_BACK_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_back_button_behavior"

.field public static final INCALL_BACK_BUTTON_BEHAVIOR_DEFAULT:I = 0x0

.field public static final INCALL_BACK_BUTTON_BEHAVIOR_HANGUP:I = 0x1

.field public static final INCALL_BACK_BUTTON_BEHAVIOR_NONE:I = 0x0

.field public static final INCALL_POWER_BUTTON_BEHAVIOR:Ljava/lang/String; = "incall_power_button_behavior"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_DEFAULT:I = 0x1

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_HANGUP:I = 0x2

.field public static final INCALL_POWER_BUTTON_BEHAVIOR_SCREEN_OFF:I = 0x1

.field private static final INCALL_POWER_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final INPUT_METHODS_SUBTYPE_HISTORY:Ljava/lang/String; = "input_methods_subtype_history"

.field public static final INPUT_METHOD_SELECTOR_VISIBILITY:Ljava/lang/String; = "input_method_selector_visibility"

.field public static final INSTALL_NON_MARKET_APPS:Ljava/lang/String; = "install_non_market_apps"

.field public static final INSTANT_APPS_ENABLED:Ljava/lang/String; = "instant_apps_enabled"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final INSTANT_APP_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IN_CALL_NOTIFICATION_ENABLED:Ljava/lang/String; = "in_call_notification_enabled"

.field private static final IN_CALL_NOTIFICATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final KEYGUARD_SLICE_URI:Ljava/lang/String; = "keyguard_slice_uri"

.field public static final LAST_SETUP_SHOWN:Ljava/lang/String; = "last_setup_shown"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

.field public static final LOCATION_ACCESS_CHECK_DELAY_MILLIS:Ljava/lang/String; = "location_access_check_delay_millis"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LOCATION_ACCESS_CHECK_INTERVAL_MILLIS:Ljava/lang/String; = "location_access_check_interval_millis"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LOCATION_CHANGER:Ljava/lang/String; = "location_changer"

.field public static final LOCATION_CHANGER_QUICK_SETTINGS:I = 0x2

.field public static final LOCATION_CHANGER_SYSTEM_SETTINGS:I = 0x1

.field public static final LOCATION_CHANGER_UNKNOWN:I = 0x0

.field public static final LOCATION_MODE:Ljava/lang/String; = "location_mode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_MODE_BATTERY_SAVING:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_MODE_HIGH_ACCURACY:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_MODE_OFF:I = 0x0

.field public static final LOCATION_MODE_ON:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LOCATION_MODE_SENSORS_ONLY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCATION_PERMISSIONS_UPGRADE_TO_Q_MODE:Ljava/lang/String; = "location_permissions_upgrade_to_q_mode"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LOCATION_PROVIDERS_ALLOWED:Ljava/lang/String; = "location_providers_allowed"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKDOWN_IN_POWER_MENU:Ljava/lang/String; = "lockdown_in_power_menu"

.field private static final LOCKDOWN_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final LOCK_BIOMETRIC_WEAK_FLAGS:Ljava/lang/String; = "lock_biometric_weak_flags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_ENABLED:Ljava/lang/String; = "lock_pattern_autolock"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "lock_pattern_tactile_feedback_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PATTERN_VISIBLE:Ljava/lang/String; = "lock_pattern_visible_pattern"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_ALLOW_PRIVATE_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_allow_private_notifications"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LOCK_SCREEN_ALLOW_REMOTE_INPUT:Ljava/lang/String; = "lock_screen_allow_remote_input"

.field public static final LOCK_SCREEN_APPWIDGET_IDS:Ljava/lang/String; = "lock_screen_appwidget_ids"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_CUSTOM_CLOCK_FACE:Ljava/lang/String; = "lock_screen_custom_clock_face"

.field private static final LOCK_SCREEN_CUSTOM_CLOCK_FACE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final LOCK_SCREEN_FALLBACK_APPWIDGET_ID:Ljava/lang/String; = "lock_screen_fallback_appwidget_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_screen_lock_after_timeout"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_SHOW_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_show_notifications"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final LOCK_SCREEN_SHOW_SILENT_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_show_silent_notifications"

.field public static final LOCK_SCREEN_STICKY_APPWIDGET:Ljava/lang/String; = "lock_screen_sticky_appwidget"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_SCREEN_WHEN_TRUST_LOST:Ljava/lang/String; = "lock_screen_when_trust_lost"

.field private static final LOCK_SCREEN_WHEN_TRUST_LOST_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final LOCK_TO_APP_EXIT_LOCKED:Ljava/lang/String; = "lock_to_app_exit_locked"

.field public static final LOGGING_ID:Ljava/lang/String; = "logging_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LONG_PRESS_TIMEOUT:Ljava/lang/String; = "long_press_timeout"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final LONG_PRESS_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final LOW_POWER_MANUAL_ACTIVATION_COUNT:Ljava/lang/String; = "low_power_manual_activation_count"

.field public static final LOW_POWER_WARNING_ACKNOWLEDGED:Ljava/lang/String; = "low_power_warning_acknowledged"

.field public static final MANAGED_PROFILE_CONTACT_REMOTE_SEARCH:Ljava/lang/String; = "managed_profile_contact_remote_search"

.field public static final MANAGED_PROVISIONING_DPC_DOWNLOADED:Ljava/lang/String; = "managed_provisioning_dpc_downloaded"

.field public static final MANUAL_RINGER_TOGGLE_COUNT:Ljava/lang/String; = "manual_ringer_toggle_count"

.field private static final MANUAL_RINGER_TOGGLE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final MOUNT_PLAY_NOTIFICATION_SND:Ljava/lang/String; = "mount_play_not_snd"

.field private static final MOUNT_PLAY_NOTIFICATION_SND_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final MOUNT_UMS_AUTOSTART:Ljava/lang/String; = "mount_ums_autostart"

.field private static final MOUNT_UMS_AUTOSTART_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final MOUNT_UMS_NOTIFY_ENABLED:Ljava/lang/String; = "mount_ums_notify_enabled"

.field private static final MOUNT_UMS_NOTIFY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final MOUNT_UMS_PROMPT:Ljava/lang/String; = "mount_ums_prompt"

.field private static final MOUNT_UMS_PROMPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field private static final MOVED_TO_GLOBAL:Ljava/util/HashSet;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MULTI_PRESS_TIMEOUT:Ljava/lang/String; = "multi_press_timeout"

.field public static final NAVIGATION_MODE:Ljava/lang/String; = "navigation_mode"

.field private static final NAVIGATION_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NETWORK_PREFERENCE:Ljava/lang/String; = "network_preference"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NFC_PAYMENT_DEFAULT_COMPONENT:Ljava/lang/String; = "nfc_payment_default_component"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final NFC_PAYMENT_DEFAULT_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NFC_PAYMENT_FOREGROUND:Ljava/lang/String; = "nfc_payment_foreground"

.field public static final NIGHT_DISPLAY_ACTIVATED:Ljava/lang/String; = "night_display_activated"

.field public static final NIGHT_DISPLAY_AUTO_MODE:Ljava/lang/String; = "night_display_auto_mode"

.field private static final NIGHT_DISPLAY_AUTO_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NIGHT_DISPLAY_COLOR_TEMPERATURE:Ljava/lang/String; = "night_display_color_temperature"

.field private static final NIGHT_DISPLAY_COLOR_TEMPERATURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NIGHT_DISPLAY_CUSTOM_END_TIME:Ljava/lang/String; = "night_display_custom_end_time"

.field private static final NIGHT_DISPLAY_CUSTOM_END_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NIGHT_DISPLAY_CUSTOM_START_TIME:Ljava/lang/String; = "night_display_custom_start_time"

.field private static final NIGHT_DISPLAY_CUSTOM_START_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NIGHT_DISPLAY_LAST_ACTIVATED_TIME:Ljava/lang/String; = "night_display_last_activated_time"

.field public static final NOTIFICATION_BADGING:Ljava/lang/String; = "notification_badging"

.field private static final NOTIFICATION_BADGING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NOTIFICATION_BUBBLES:Ljava/lang/String; = "notification_bubbles"

.field private static final NOTIFICATION_BUBBLES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NOTIFICATION_DISMISS_RTL:Ljava/lang/String; = "notification_dismiss_rtl"

.field private static final NOTIFICATION_DISMISS_RTL_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final NOTIFICATION_NEW_INTERRUPTION_MODEL:Ljava/lang/String; = "new_interruption_model"

.field public static final NUM_ROTATION_SUGGESTIONS_ACCEPTED:Ljava/lang/String; = "num_rotation_suggestions_accepted"

.field public static final ODI_CAPTIONS_ENABLED:Ljava/lang/String; = "odi_captions_enabled"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final ODI_CAPTIONS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final PACKAGES_TO_CLEAR_DATA_BEFORE_FULL_RESTORE:Ljava/lang/String; = "packages_to_clear_data_before_full_restore"

.field public static final PACKAGE_VERIFIER_STATE:Ljava/lang/String; = "package_verifier_state"

.field public static final PACKAGE_VERIFIER_USER_CONSENT:Ljava/lang/String; = "package_verifier_user_consent"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final PARENTAL_CONTROL_ENABLED:Ljava/lang/String; = "parental_control_enabled"

.field public static final PARENTAL_CONTROL_LAST_UPDATE:Ljava/lang/String; = "parental_control_last_update"

.field public static final PARENTAL_CONTROL_REDIRECT_URL:Ljava/lang/String; = "parental_control_redirect_url"

.field public static final PAYMENT_SERVICE_SEARCH_URI:Ljava/lang/String; = "payment_service_search_uri"

.field public static final PREFERRED_TTY_MODE:Ljava/lang/String; = "preferred_tty_mode"

.field private static final PREFERRED_TTY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final PRINT_SERVICE_SEARCH_URI:Ljava/lang/String; = "print_service_search_uri"

.field public static final QS_AUTO_ADDED_TILES:Ljava/lang/String; = "qs_auto_tiles"

.field private static final QS_AUTO_ADDED_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final QS_TILES:Ljava/lang/String; = "sysui_qs_tiles"

.field private static final QS_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final RTT_CALLING_MODE:Ljava/lang/String; = "rtt_calling_mode"

.field private static final RTT_CALLING_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SCREENSAVER_ACTIVATE_ON_DOCK:Ljava/lang/String; = "screensaver_activate_on_dock"

.field private static final SCREENSAVER_ACTIVATE_ON_DOCK_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SCREENSAVER_ACTIVATE_ON_SLEEP:Ljava/lang/String; = "screensaver_activate_on_sleep"

.field private static final SCREENSAVER_ACTIVATE_ON_SLEEP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SCREENSAVER_COMPONENTS:Ljava/lang/String; = "screensaver_components"

.field private static final SCREENSAVER_COMPONENTS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SCREENSAVER_DEFAULT_COMPONENT:Ljava/lang/String; = "screensaver_default_component"

.field public static final SCREENSAVER_ENABLED:Ljava/lang/String; = "screensaver_enabled"

.field private static final SCREENSAVER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SEARCH_GLOBAL_SEARCH_ACTIVITY:Ljava/lang/String; = "search_global_search_activity"

.field public static final SEARCH_MAX_RESULTS_PER_SOURCE:Ljava/lang/String; = "search_max_results_per_source"

.field public static final SEARCH_MAX_RESULTS_TO_DISPLAY:Ljava/lang/String; = "search_max_results_to_display"

.field public static final SEARCH_MAX_SHORTCUTS_RETURNED:Ljava/lang/String; = "search_max_shortcuts_returned"

.field public static final SEARCH_MAX_SOURCE_EVENT_AGE_MILLIS:Ljava/lang/String; = "search_max_source_event_age_millis"

.field public static final SEARCH_MAX_STAT_AGE_MILLIS:Ljava/lang/String; = "search_max_stat_age_millis"

.field public static final SEARCH_MIN_CLICKS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_clicks_for_source_ranking"

.field public static final SEARCH_MIN_IMPRESSIONS_FOR_SOURCE_RANKING:Ljava/lang/String; = "search_min_impressions_for_source_ranking"

.field public static final SEARCH_NUM_PROMOTED_SOURCES:Ljava/lang/String; = "search_num_promoted_sources"

.field public static final SEARCH_PER_SOURCE_CONCURRENT_QUERY_LIMIT:Ljava/lang/String; = "search_per_source_concurrent_query_limit"

.field public static final SEARCH_PREFILL_MILLIS:Ljava/lang/String; = "search_prefill_millis"

.field public static final SEARCH_PROMOTED_SOURCE_DEADLINE_MILLIS:Ljava/lang/String; = "search_promoted_source_deadline_millis"

.field public static final SEARCH_QUERY_THREAD_CORE_POOL_SIZE:Ljava/lang/String; = "search_query_thread_core_pool_size"

.field public static final SEARCH_QUERY_THREAD_MAX_POOL_SIZE:Ljava/lang/String; = "search_query_thread_max_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_CORE_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_core_pool_size"

.field public static final SEARCH_SHORTCUT_REFRESH_MAX_POOL_SIZE:Ljava/lang/String; = "search_shortcut_refresh_max_pool_size"

.field public static final SEARCH_SOURCE_TIMEOUT_MILLIS:Ljava/lang/String; = "search_source_timeout_millis"

.field public static final SEARCH_THREAD_KEEPALIVE_SECONDS:Ljava/lang/String; = "search_thread_keepalive_seconds"

.field public static final SEARCH_WEB_RESULTS_OVERRIDE_LIMIT:Ljava/lang/String; = "search_web_results_override_limit"

.field public static final SELECTED_INPUT_METHOD_SUBTYPE:Ljava/lang/String; = "selected_input_method_subtype"

.field public static final SELECTED_SPELL_CHECKER:Ljava/lang/String; = "selected_spell_checker"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final SELECTED_SPELL_CHECKER_SUBTYPE:Ljava/lang/String; = "selected_spell_checker_subtype"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final SETTINGS_CLASSNAME:Ljava/lang/String; = "settings_classname"

.field public static final SETTINGS_TO_BACKUP:[Ljava/lang/String;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final SHOW_FIRST_CRASH_DIALOG_DEV_OPTION:Ljava/lang/String; = "show_first_crash_dialog_dev_option"

.field private static final SHOW_FIRST_CRASH_DIALOG_DEV_OPTION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SHOW_IME_WITH_HARD_KEYBOARD:Ljava/lang/String; = "show_ime_with_hard_keyboard"

.field private static final SHOW_IME_WITH_HARD_KEYBOARD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SHOW_MODE_AUTO:I = 0x0

.field public static final SHOW_MODE_HIDDEN:I = 0x1

.field public static final SHOW_NOTE_ABOUT_NOTIFICATION_HIDING:Ljava/lang/String; = "show_note_about_notification_hiding"

.field public static final SHOW_NOTIFICATION_SNOOZE:Ljava/lang/String; = "show_notification_snooze"

.field public static final SHOW_ROTATION_SUGGESTIONS:Ljava/lang/String; = "show_rotation_suggestions"

.field public static final SHOW_ROTATION_SUGGESTIONS_DEFAULT:I = 0x0

.field public static final SHOW_ROTATION_SUGGESTIONS_DISABLED:I = 0x0

.field public static final SHOW_ROTATION_SUGGESTIONS_ENABLED:I = 0x1

.field public static final SHOW_ZEN_SETTINGS_SUGGESTION:Ljava/lang/String; = "show_zen_settings_suggestion"

.field public static final SHOW_ZEN_UPGRADE_NOTIFICATION:Ljava/lang/String; = "show_zen_upgrade_notification"

.field public static final SILENCE_ALARMS_GESTURE_COUNT:Ljava/lang/String; = "silence_alarms_gesture_count"

.field public static final SILENCE_CALL_GESTURE_COUNT:Ljava/lang/String; = "silence_call_gesture_count"

.field public static final SILENCE_GESTURE:Ljava/lang/String; = "silence_gesture"

.field private static final SILENCE_GESTURE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field private static final SILENCE_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SILENCE_NOTIFICATION_GESTURE_COUNT:Ljava/lang/String; = "silence_notification_gesture_count"

.field public static final SILENCE_TIMER_GESTURE_COUNT:Ljava/lang/String; = "silence_timer_gesture_count"

.field public static final SKIP_FIRST_USE_HINTS:Ljava/lang/String; = "skip_first_use_hints"

.field public static final SKIP_GESTURE:Ljava/lang/String; = "skip_gesture"

.field public static final SKIP_GESTURE_COUNT:Ljava/lang/String; = "skip_gesture_count"

.field private static final SKIP_GESTURE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field private static final SKIP_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SLEEP_TIMEOUT:Ljava/lang/String; = "sleep_timeout"

.field public static final SMS_DEFAULT_APPLICATION:Ljava/lang/String; = "sms_default_application"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final SPELL_CHECKER_ENABLED:Ljava/lang/String; = "spell_checker_enabled"

.field public static final SUPPRESS_AUTO_BATTERY_SAVER_SUGGESTION:Ljava/lang/String; = "suppress_auto_battery_saver_suggestion"

.field public static final SYNC_PARENT_SOUNDS:Ljava/lang/String; = "sync_parent_sounds"

.field private static final SYNC_PARENT_SOUNDS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final SYSTEM_NAVIGATION_KEYS_ENABLED:Ljava/lang/String; = "system_navigation_keys_enabled"

.field private static final SYSTEM_NAVIGATION_KEYS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final THEME_CUSTOMIZATION_OVERLAY_PACKAGES:Ljava/lang/String; = "theme_customization_overlay_packages"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final THEME_CUSTOMIZATION_OVERLAY_PACKAGES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TOUCH_EXPLORATION_ENABLED:Ljava/lang/String; = "touch_exploration_enabled"

.field private static final TOUCH_EXPLORATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES:Ljava/lang/String; = "touch_exploration_granted_accessibility_services"

.field private static final TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TRUST_AGENTS_EXTEND_UNLOCK:Ljava/lang/String; = "trust_agents_extend_unlock"

.field private static final TRUST_AGENTS_EXTEND_UNLOCK_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TRUST_AGENTS_INITIALIZED:Ljava/lang/String; = "trust_agents_initialized"

.field public static final TTS_DEFAULT_COUNTRY:Ljava/lang/String; = "tts_default_country"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LANG:Ljava/lang/String; = "tts_default_lang"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_DEFAULT_LOCALE:Ljava/lang/String; = "tts_default_locale"

.field private static final TTS_DEFAULT_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_DEFAULT_PITCH:Ljava/lang/String; = "tts_default_pitch"

.field private static final TTS_DEFAULT_PITCH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_DEFAULT_RATE:Ljava/lang/String; = "tts_default_rate"

.field private static final TTS_DEFAULT_RATE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_DEFAULT_SYNTH:Ljava/lang/String; = "tts_default_synth"

.field private static final TTS_DEFAULT_SYNTH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_DEFAULT_VARIANT:Ljava/lang/String; = "tts_default_variant"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTS_ENABLED_PLUGINS:Ljava/lang/String; = "tts_enabled_plugins"

.field private static final TTS_ENABLED_PLUGINS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TTS_USE_DEFAULTS:Ljava/lang/String; = "tts_use_defaults"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TTY_MODE_ENABLED:Ljava/lang/String; = "tty_mode_enabled"

.field private static final TTY_MODE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final TV_APP_USES_NON_SYSTEM_INPUTS:Ljava/lang/String; = "tv_app_uses_non_system_inputs"

.field public static final TV_INPUT_CUSTOM_LABELS:Ljava/lang/String; = "tv_input_custom_labels"

.field public static final TV_INPUT_HIDDEN_INPUTS:Ljava/lang/String; = "tv_input_hidden_inputs"

.field public static final TV_USER_SETUP_COMPLETE:Ljava/lang/String; = "tv_user_setup_complete"

.field public static final UI_NIGHT_MODE:Ljava/lang/String; = "ui_night_mode"

.field private static final UI_NIGHT_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final UNKNOWN_SOURCES_DEFAULT_REVERSED:Ljava/lang/String; = "unknown_sources_default_reversed"

.field public static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS:Ljava/lang/String; = "unsafe_volume_music_active_ms"

.field public static final USB_AUDIO_AUTOMATIC_ROUTING_DISABLED:Ljava/lang/String; = "usb_audio_automatic_routing_disabled"

.field public static final USB_MASS_STORAGE_ENABLED:Ljava/lang/String; = "usb_mass_storage_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final USB_MASS_STORAGE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_SETUP_PERSONALIZATION_COMPLETE:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_SETUP_PERSONALIZATION_NOT_STARTED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_SETUP_PERSONALIZATION_PAUSED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_SETUP_PERSONALIZATION_STARTED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_SETUP_PERSONALIZATION_STATE:Ljava/lang/String; = "user_setup_personalization_state"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USE_GOOGLE_MAIL:Ljava/lang/String; = "use_google_mail"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VALIDATORS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/provider/SettingsValidators$Validator;",
            ">;"
        }
    .end annotation
.end field

.field public static final VOICE_INTERACTION_SERVICE:Ljava/lang/String; = "voice_interaction_service"

.field public static final VOICE_RECOGNITION_SERVICE:Ljava/lang/String; = "voice_recognition_service"
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public static final VOLUME_HUSH_GESTURE:Ljava/lang/String; = "volume_hush_gesture"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final VOLUME_HUSH_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final VOLUME_HUSH_MUTE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final VOLUME_HUSH_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final VOLUME_HUSH_VIBRATE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final VR_DISPLAY_MODE:Ljava/lang/String; = "vr_display_mode"

.field public static final VR_DISPLAY_MODE_LOW_PERSISTENCE:I = 0x0

.field public static final VR_DISPLAY_MODE_OFF:I = 0x1

.field private static final VR_DISPLAY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WAKE_GESTURE_ENABLED:Ljava/lang/String; = "wake_gesture_enabled"

.field private static final WAKE_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_DISCONNECT_DELAY_DURATION:Ljava/lang/String; = "wifi_disconnect_delay_duration"

.field private static final WIFI_DISCONNECT_DELAY_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_IDLE_MS:Ljava/lang/String; = "wifi_idle_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MAX_DHCP_RETRY_COUNT:Ljava/lang/String; = "wifi_max_dhcp_retry_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_MOBILE_DATA_TRANSITION_WAKELOCK_TIMEOUT_MS:Ljava/lang/String; = "wifi_mobile_data_transition_wakelock_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON:Ljava/lang/String; = "wifi_networks_available_notification_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY:Ljava/lang/String; = "wifi_networks_available_repeat_delay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_NUM_OPEN_NETWORKS_KEPT:Ljava/lang/String; = "wifi_num_open_networks_kept"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WIFI_NUM_OPEN_NETWORKS_KEPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final WIFI_ON:Ljava/lang/String; = "wifi_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_SLAVE_ON:Ljava/lang/String; = "wifi_slave_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ACCEPTABLE_PACKET_LOSS_PERCENTAGE:Ljava/lang/String; = "wifi_watchdog_acceptable_packet_loss_percentage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_AP_COUNT:Ljava/lang/String; = "wifi_watchdog_ap_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_background_check_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_ENABLED:Ljava/lang/String; = "wifi_watchdog_background_check_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_BACKGROUND_CHECK_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_background_check_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_INITIAL_IGNORED_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_initial_ignored_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_MAX_AP_CHECKS:Ljava/lang/String; = "wifi_watchdog_max_ap_checks"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_ON:Ljava/lang/String; = "wifi_watchdog_on"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_COUNT:Ljava/lang/String; = "wifi_watchdog_ping_count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_DELAY_MS:Ljava/lang/String; = "wifi_watchdog_ping_delay_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_PING_TIMEOUT_MS:Ljava/lang/String; = "wifi_watchdog_ping_timeout_ms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WIFI_WATCHDOG_WATCH_LIST:Ljava/lang/String; = "wifi_watchdog_watch_list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ZEN_DURATION:Ljava/lang/String; = "zen_duration"

.field public static final ZEN_DURATION_FOREVER:I = 0x0

.field public static final ZEN_DURATION_PROMPT:I = -0x1

.field private static final ZEN_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

.field public static final ZEN_SETTINGS_SUGGESTION_VIEWED:Ljava/lang/String; = "zen_settings_suggestion_viewed"

.field public static final ZEN_SETTINGS_UPDATED:Ljava/lang/String; = "zen_settings_updated"

.field private static sIsSystemProcess:Z

.field private static sLockSettings:Lcom/android/internal/widget/ILockSettings;

.field private static final sNameValueCache:Landroid/provider/Settings$NameValueCache;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private static final sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 134

    nop

    const-string v0, "content://settings/secure"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/provider/Settings$ContentProviderHolder;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroid/provider/Settings$ContentProviderHolder;-><init>(Landroid/net/Uri;)V

    sput-object v0, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    new-instance v0, Landroid/provider/Settings$NameValueCache;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    const-string v3, "GET_secure"

    const-string v4, "PUT_secure"

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;)V

    sput-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    const/4 v0, 0x0

    sput-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_visible_pattern"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    const-string/jumbo v1, "lock_pattern_tactile_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "adb_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "assisted_gps_enabled"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "bluetooth_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v1, "bugreport_in_power_menu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v2, "cdma_cell_broadcast_sms"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "roaming_settings"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "subscription_mode"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v2, "data_activity_timeout_mobile"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v2, "data_activity_timeout_wifi"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v2, "data_roaming"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v2, "development_settings_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v2, "device_provisioned"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v2, "display_size_forced"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v2, "download_manager_max_bytes_over_mobile"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v2, "download_manager_recommended_max_bytes_over_mobile"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "mobile_data"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_dev_bucket_duration"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_dev_delete_age"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_dev_persist_bytes"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_dev_rotate_age"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_global_alert_bytes"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_poll_interval"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_sample_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_time_cache_max_age"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_uid_bucket_duration"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_uid_delete_age"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_uid_persist_bytes"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_uid_rotate_age"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_uid_tag_bucket_duration"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_uid_tag_delete_age"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_uid_tag_persist_bytes"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "netstats_uid_tag_rotate_age"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "network_preference"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "nitz_update_diff"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "nitz_update_spacing"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "ntp_server"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "ntp_timeout"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "ntp_server_2"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "pdp_watchdog_error_poll_count"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "pdp_watchdog_long_poll_interval_ms"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "pdp_watchdog_max_pdp_reset_fail_count"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "pdp_watchdog_poll_interval_ms"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "pdp_watchdog_trigger_packet_count"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "setup_prepaid_data_service_url"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "setup_prepaid_detection_redir_host"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "setup_prepaid_detection_target_url"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "tether_dun_apn"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "tether_dun_required"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "tether_supported"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v2, "usb_mass_storage_enabled"

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v3, "use_google_mail"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v3, "wifi_country_code"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v3, "wifi_framework_scan_interval_ms"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v3, "wifi_frequency_band"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v3, "wifi_idle_ms"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v3, "wifi_max_dhcp_retry_count"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v3, "wifi_mobile_data_transition_wakelock_timeout_ms"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v3, "wifi_networks_available_notification_on"

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v4, "wifi_networks_available_repeat_delay"

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v5, "wifi_num_open_networks_kept"

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_on"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_slave_on"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_p2p_device_name"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_saved_state"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_supplicant_scan_interval_ms"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_suspend_optimizations_enabled"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_coverage_extend_feature_enabled"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_verbose_logging_enabled"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_enhanced_auto_join"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_network_show_rssi"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_watchdog_on"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_watchdog_poor_network_test_enabled"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wifi_p2p_pending_factory_reset"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wimax_networks_available_notification_on"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "package_verifier_enable"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "verifier_timeout"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "verifier_default_response"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "data_stall_alarm_non_aggressive_delay_in_ms"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "data_stall_alarm_aggressive_delay_in_ms"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "gprs_register_check_period_ms"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "wtf_is_fatal"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "battery_discharge_duration_threshold"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "battery_discharge_threshold"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "send_action_app_error"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "dropbox_age_seconds"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "dropbox_max_files"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "dropbox_quota_kb"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "dropbox_quota_percent"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "dropbox_reserve_percent"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "dropbox:"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "logcat_for_"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "sys_free_storage_log_interval"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "disk_free_change_reporting_threshold"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "sys_storage_threshold_percentage"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "sys_storage_threshold_max_bytes"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "sys_storage_full_threshold_bytes"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "sync_max_retry_delay_in_seconds"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "connectivity_change_delay"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "captive_portal_detection_enabled"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "captive_portal_server"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "nsd_on"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "set_install_location"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "default_install_location"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "inet_condition_debounce_up_delay"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "inet_condition_debounce_down_delay"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "read_external_storage_enforced_default"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "http_proxy"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "global_http_proxy_host"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "global_http_proxy_port"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "global_http_proxy_exclusion_list"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "set_global_http_proxy"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string v6, "default_dns_server"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "preferred_network_mode"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    const-string/jumbo v6, "webview_data_reduction_proxy_key"

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->BUGREPORT_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ALLOW_MOCK_LOCATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ODI_CAPTIONS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->BLUETOOTH_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NULLABLE_COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->AUTOFILL_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SHOW_IME_WITH_HARD_KEYBOARD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WIFI_DISCONNECT_DELAY_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->ANY_STRING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->LOCK_SCREEN_CUSTOM_CLOCK_FACE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->USB_MASS_STORAGE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NULLABLE_COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_TARGET_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/Settings$Secure$1;

    invoke-direct {v0}, Landroid/provider/Settings$Secure$1;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_BUTTON_TARGET_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TOUCH_EXPLORATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v6, ":"

    invoke-direct {v0, v6}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    invoke-direct {v0, v6}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->GLOBAL_ACTIONS_PANEL_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->HUSH_GESTURE_USED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MANUAL_RINGER_TOGGLE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ZEN_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->IN_CALL_NOTIFICATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v0, v7, v8}, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;-><init>(FF)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v7, "-1"

    const-string v8, "0"

    const-string v9, "1"

    const-string v10, "2"

    const-string v11, "3"

    const-string v12, "4"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_PRESET_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v7, "2"

    const-string v8, "1"

    const-string v9, "0"

    filled-new-array {v9, v8, v7}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_EDGE_TYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_EDGE_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->ANY_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_WINDOW_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v10, "DEFAULT"

    const-string v11, "MONOSPACE"

    const-string v12, "SANS_SERIF"

    const-string v13, "SERIF"

    filled-new-array {v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_TYPEFACE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x40000000    # 2.0f

    invoke-direct {v0, v10, v11}, Landroid/provider/SettingsValidators$InclusiveFloatRangeValidator;-><init>(FF)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_FONT_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_INVERSION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v10, "-1"

    const-string v11, "11"

    const-string v12, "12"

    const-string v13, "13"

    filled-new-array {v10, v9, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_DALTONIZER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_AUTOCLICK_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_AUTOCLICK_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ACCESSIBILITY_LARGE_POINTER_ICON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->LONG_PRESS_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_DEFAULT_RATE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_DEFAULT_PITCH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->PACKAGE_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_DEFAULT_SYNTH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/Settings$Secure$2;

    invoke-direct {v0}, Landroid/provider/Settings$Secure$2;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_DEFAULT_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$PackageNameListValidator;

    const-string v10, " "

    invoke-direct {v0, v10}, Landroid/provider/SettingsValidators$PackageNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->TTS_ENABLED_PLUGINS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WIFI_NUM_OPEN_NETWORKS_KEPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    const-string v10, "3"

    filled-new-array {v9, v8, v7, v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->PREFERRED_TTY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ENHANCED_VOICE_PRIVACY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TTY_MODE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->RTT_CALLING_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MOUNT_PLAY_NOTIFICATION_SND_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MOUNT_UMS_AUTOSTART_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MOUNT_UMS_PROMPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->MOUNT_UMS_NOTIFY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SHOW_FIRST_CRASH_DIALOG_DEV_OPTION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    filled-new-array {v8, v7}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->INCALL_POWER_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->WAKE_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOZE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOZE_ALWAYS_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOZE_PICK_UP_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOZE_DOUBLE_TAP_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOZE_TAP_SCREEN_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOZE_WAKE_SCREEN_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SKIP_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SKIP_GESTURE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SILENCE_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SILENCE_GESTURE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-direct {v0, v11, v10}, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$Secure;->UI_NIGHT_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SCREENSAVER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    const-string v12, ","

    invoke-direct {v0, v12}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->SCREENSAVER_COMPONENTS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SCREENSAVER_ACTIVATE_ON_DOCK_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SCREENSAVER_ACTIVATE_ON_SLEEP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->COMPONENT_NAME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NFC_PAYMENT_DEFAULT_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    invoke-direct {v0, v6}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_ASSISTANT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    invoke-direct {v0, v6}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$PackageNameListValidator;

    invoke-direct {v0, v6}, Landroid/provider/SettingsValidators$PackageNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SYNC_PARENT_SOUNDS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DOUBLE_TAP_TO_WAKE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->CAMERA_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->FACE_UNLOCK_KEYGUARD_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->FACE_UNLOCK_DISMISSES_KEYGUARD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->FACE_UNLOCK_APP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->FACE_UNLOCK_EDUCATION_INFO_DISPLAYED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_SILENCE_ALERTS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_WAKE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->TRUST_AGENTS_EXTEND_UNLOCK_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->LOCK_SCREEN_WHEN_TRUST_LOST_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;

    invoke-direct {v0, v11, v10}, Landroid/provider/SettingsValidators$InclusiveIntegerRangeValidator;-><init>(II)V

    sput-object v0, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_AUTO_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_COLOR_TEMPERATURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_CUSTOM_START_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_CUSTOM_END_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->DISPLAY_WHITE_BALANCE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$ComponentNameListValidator;

    invoke-direct {v0, v6}, Landroid/provider/SettingsValidators$ComponentNameListValidator;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->ENABLED_VR_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    filled-new-array {v9, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->VR_DISPLAY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->SYSTEM_NAVIGATION_KEYS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/Settings$Secure$3;

    invoke-direct {v0}, Landroid/provider/Settings$Secure$3;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->QS_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NOTIFICATION_BADGING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NOTIFICATION_BUBBLES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->NOTIFICATION_DISMISS_RTL_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/Settings$Secure$4;

    invoke-direct {v0}, Landroid/provider/Settings$Secure$4;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->QS_AUTO_ADDED_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->LOCKDOWN_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->VOLUME_HUSH_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->JSON_OBJECT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->THEME_CUSTOMIZATION_OVERLAY_PACKAGES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    new-instance v0, Landroid/provider/SettingsValidators$DiscreteValueValidator;

    filled-new-array {v9, v8, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/provider/SettingsValidators$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    sput-object v0, Landroid/provider/Settings$Secure;->NAVIGATION_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->AWARE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sget-object v0, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    sput-object v0, Landroid/provider/Settings$Secure;->AWARE_LOCK_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v6, "bugreport_in_power_menu"

    const-string/jumbo v7, "mock_location"

    const-string/jumbo v8, "usb_mass_storage_enabled"

    const-string v9, "accessibility_display_inversion_enabled"

    const-string v10, "accessibility_display_daltonizer"

    const-string v11, "accessibility_display_daltonizer_enabled"

    const-string v12, "accessibility_display_magnification_enabled"

    const-string v13, "accessibility_display_magnification_navbar_enabled"

    const-string v14, "autofill_service"

    const-string v15, "accessibility_display_magnification_scale"

    const-string v16, "enabled_accessibility_services"

    const-string v17, "enabled_vr_listeners"

    const-string/jumbo v18, "touch_exploration_granted_accessibility_services"

    const-string/jumbo v19, "touch_exploration_enabled"

    const-string v20, "accessibility_enabled"

    const-string v21, "accessibility_shortcut_target_service"

    const-string v22, "accessibility_button_target_component"

    const-string v23, "accessibility_shortcut_dialog_shown"

    const-string v24, "accessibility_shortcut_enabled"

    const-string v25, "accessibility_shortcut_on_lock_screen"

    const-string/jumbo v26, "high_text_contrast_enabled"

    const-string v27, "accessibility_captioning_preset"

    const-string v28, "accessibility_captioning_enabled"

    const-string v29, "accessibility_captioning_locale"

    const-string v30, "accessibility_captioning_background_color"

    const-string v31, "accessibility_captioning_foreground_color"

    const-string v32, "accessibility_captioning_edge_type"

    const-string v33, "accessibility_captioning_edge_color"

    const-string v34, "accessibility_captioning_typeface"

    const-string v35, "accessibility_captioning_font_scale"

    const-string v36, "accessibility_captioning_window_color"

    const-string/jumbo v37, "tts_default_rate"

    const-string/jumbo v38, "tts_default_pitch"

    const-string/jumbo v39, "tts_default_synth"

    const-string/jumbo v40, "tts_enabled_plugins"

    const-string/jumbo v41, "tts_default_locale"

    const-string/jumbo v42, "show_ime_with_hard_keyboard"

    const-string/jumbo v43, "wifi_networks_available_notification_on"

    const-string/jumbo v44, "wifi_networks_available_repeat_delay"

    const-string/jumbo v45, "wifi_num_open_networks_kept"

    const-string/jumbo v46, "mount_play_not_snd"

    const-string/jumbo v47, "mount_ums_autostart"

    const-string/jumbo v48, "mount_ums_prompt"

    const-string/jumbo v49, "mount_ums_notify_enabled"

    const-string v50, "double_tap_to_wake"

    const-string/jumbo v51, "wake_gesture_enabled"

    const-string/jumbo v52, "long_press_timeout"

    const-string v53, "camera_gesture_disabled"

    const-string v54, "accessibility_autoclick_enabled"

    const-string v55, "accessibility_autoclick_delay"

    const-string v56, "accessibility_large_pointer_icon"

    const-string/jumbo v57, "preferred_tty_mode"

    const-string v58, "enhanced_voice_privacy_enabled"

    const-string/jumbo v59, "tty_mode_enabled"

    const-string/jumbo v60, "rtt_calling_mode"

    const-string/jumbo v61, "incall_power_button_behavior"

    const-string/jumbo v62, "night_display_custom_start_time"

    const-string/jumbo v63, "night_display_custom_end_time"

    const-string/jumbo v64, "night_display_color_temperature"

    const-string/jumbo v65, "night_display_auto_mode"

    const-string v66, "display_white_balance_enabled"

    const-string/jumbo v67, "sync_parent_sounds"

    const-string v68, "camera_double_twist_to_flip_enabled"

    const-string v69, "camera_double_tap_power_gesture_disabled"

    const-string/jumbo v70, "system_navigation_keys_enabled"

    const-string/jumbo v71, "sysui_qs_tiles"

    const-string v72, "doze_enabled"

    const-string v73, "doze_always_on"

    const-string v74, "doze_pulse_on_pick_up"

    const-string v75, "doze_pulse_on_double_tap"

    const-string v76, "doze_tap_gesture"

    const-string v77, "doze_wake_screen_gesture"

    const-string/jumbo v78, "nfc_payment_default_component"

    const-string v79, "automatic_storage_manager_days_to_retain"

    const-string v80, "face_unlock_keyguard_enabled"

    const-string v81, "face_unlock_dismisses_keyguard"

    const-string v82, "face_unlock_app_enabled"

    const-string v83, "face_unlock_always_require_confirmation"

    const-string v84, "assist_gesture_enabled"

    const-string v85, "assist_gesture_silence_alerts_enabled"

    const-string v86, "assist_gesture_wake_enabled"

    const-string/jumbo v87, "vr_display_mode"

    const-string/jumbo v88, "notification_badging"

    const-string/jumbo v89, "notification_bubbles"

    const-string/jumbo v90, "notification_dismiss_rtl"

    const-string/jumbo v91, "qs_auto_tiles"

    const-string/jumbo v92, "screensaver_enabled"

    const-string/jumbo v93, "screensaver_components"

    const-string/jumbo v94, "screensaver_activate_on_dock"

    const-string/jumbo v95, "screensaver_activate_on_sleep"

    const-string/jumbo v96, "lockdown_in_power_menu"

    const-string/jumbo v97, "show_first_crash_dialog_dev_option"

    const-string/jumbo v98, "volume_hush_gesture"

    const-string/jumbo v99, "manual_ringer_toggle_count"

    const-string/jumbo v100, "hush_gesture_used"

    const-string/jumbo v101, "in_call_notification_enabled"

    const-string/jumbo v102, "lock_screen_allow_private_notifications"

    const-string/jumbo v103, "lock_screen_custom_clock_face"

    const-string/jumbo v104, "lock_screen_show_notifications"

    const-string/jumbo v105, "lock_screen_show_silent_notifications"

    const-string/jumbo v106, "show_notification_snooze"

    const-string/jumbo v107, "zen_duration"

    const-string/jumbo v108, "show_zen_upgrade_notification"

    const-string/jumbo v109, "show_zen_settings_suggestion"

    const-string/jumbo v110, "zen_settings_updated"

    const-string/jumbo v111, "zen_settings_suggestion_viewed"

    const-string v112, "charging_sounds_enabled"

    const-string v113, "charging_vibration_enabled"

    const-string/jumbo v114, "wifi_disconnect_delay_duration"

    const-string v115, "accessibility_non_interactive_ui_timeout_ms"

    const-string v116, "accessibility_interactive_ui_timeout_ms"

    const-string/jumbo v117, "new_interruption_model"

    const-string/jumbo v118, "trust_agents_extend_unlock"

    const-string/jumbo v119, "ui_night_mode"

    const-string/jumbo v120, "lock_screen_when_trust_lost"

    const-string/jumbo v121, "skip_gesture"

    const-string/jumbo v122, "silence_gesture"

    const-string/jumbo v123, "theme_customization_overlay_packages"

    const-string/jumbo v124, "navigation_mode"

    const-string v125, "aware_enabled"

    const-string/jumbo v126, "skip_gesture_count"

    const-string/jumbo v127, "silence_alarms_gesture_count"

    const-string/jumbo v128, "silence_notification_gesture_count"

    const-string/jumbo v129, "silence_call_gesture_count"

    const-string/jumbo v130, "silence_timer_gesture_count"

    const-string v131, "dark_mode_dialog_seen"

    const-string/jumbo v132, "global_actions_panel_enabled"

    const-string v133, "aware_lock_enabled"

    filled-new-array/range {v6 .. v133}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v6, Landroid/provider/Settings$Secure;->BUGREPORT_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ALLOW_MOCK_LOCATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v6, "mock_location"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->USB_MASS_STORAGE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_INVERSION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v2, "accessibility_display_inversion_enabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_DALTONIZER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v7, "accessibility_display_daltonizer"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_DALTONIZER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v8, "accessibility_display_daltonizer_enabled"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v8, "accessibility_display_magnification_enabled"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_NAVBAR_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v8, "accessibility_display_magnification_navbar_enabled"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->AUTOFILL_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v8, "autofill_service"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_DISPLAY_MAGNIFICATION_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v8, "accessibility_display_magnification_scale"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ENABLED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v8, "enabled_accessibility_services"

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ENABLED_VR_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "enabled_vr_listeners"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->TOUCH_EXPLORATION_GRANTED_ACCESSIBILITY_SERVICES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v9, "touch_exploration_granted_accessibility_services"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->TOUCH_EXPLORATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v9, "touch_exploration_enabled"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_enabled"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_TARGET_SERVICE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_shortcut_target_service"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_BUTTON_TARGET_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_button_target_component"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_DIALOG_SHOWN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_shortcut_dialog_shown"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_shortcut_enabled"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_SHORTCUT_ON_LOCK_SCREEN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_shortcut_on_lock_screen"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_HIGH_TEXT_CONTRAST_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v9, "high_text_contrast_enabled"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_PRESET_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_captioning_preset"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_captioning_enabled"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_captioning_locale"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_BACKGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_captioning_background_color"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_FOREGROUND_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_captioning_foreground_color"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_EDGE_TYPE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_captioning_edge_type"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_EDGE_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_captioning_edge_color"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_TYPEFACE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_captioning_typeface"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_FONT_SCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_captioning_font_scale"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_CAPTIONING_WINDOW_COLOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v9, "accessibility_captioning_window_color"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->TTS_DEFAULT_RATE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v9, "tts_default_rate"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->TTS_DEFAULT_PITCH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v9, "tts_default_pitch"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->TTS_DEFAULT_SYNTH_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v9, "tts_default_synth"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->TTS_ENABLED_PLUGINS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v9, "tts_enabled_plugins"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->TTS_DEFAULT_LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v9, "tts_default_locale"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SHOW_IME_WITH_HARD_KEYBOARD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v9, "show_ime_with_hard_keyboard"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->WIFI_NETWORKS_AVAILABLE_NOTIFICATION_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->WIFI_NETWORKS_AVAILABLE_REPEAT_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->WIFI_NUM_OPEN_NETWORKS_KEPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->MOUNT_PLAY_NOTIFICATION_SND_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "mount_play_not_snd"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->MOUNT_UMS_AUTOSTART_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "mount_ums_autostart"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->MOUNT_UMS_PROMPT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "mount_ums_prompt"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->MOUNT_UMS_NOTIFY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "mount_ums_notify_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->DOUBLE_TAP_TO_WAKE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "double_tap_to_wake"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->WAKE_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "wake_gesture_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->LONG_PRESS_TIMEOUT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "long_press_timeout"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->CAMERA_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "camera_gesture_disabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_AUTOCLICK_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "accessibility_autoclick_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_AUTOCLICK_DELAY_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "accessibility_autoclick_delay"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ACCESSIBILITY_LARGE_POINTER_ICON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "accessibility_large_pointer_icon"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->PREFERRED_TTY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "preferred_tty_mode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ENHANCED_VOICE_PRIVACY_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "enhanced_voice_privacy_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->TTY_MODE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "tty_mode_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->RTT_CALLING_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "rtt_calling_mode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->INCALL_POWER_BUTTON_BEHAVIOR_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "incall_power_button_behavior"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_CUSTOM_START_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "night_display_custom_start_time"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_CUSTOM_END_TIME_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "night_display_custom_end_time"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_COLOR_TEMPERATURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "night_display_color_temperature"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->NIGHT_DISPLAY_AUTO_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "night_display_auto_mode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->DISPLAY_WHITE_BALANCE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "display_white_balance_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SYNC_PARENT_SOUNDS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "sync_parent_sounds"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->CAMERA_DOUBLE_TWIST_TO_FLIP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "camera_double_twist_to_flip_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->CAMERA_DOUBLE_TAP_POWER_GESTURE_DISABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "camera_double_tap_power_gesture_disabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SYSTEM_NAVIGATION_KEYS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "system_navigation_keys_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->QS_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "sysui_qs_tiles"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->DOZE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "doze_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->DOZE_ALWAYS_ON_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "doze_always_on"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->DOZE_PICK_UP_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "doze_pulse_on_pick_up"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->DOZE_DOUBLE_TAP_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "doze_pulse_on_double_tap"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->DOZE_TAP_SCREEN_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "doze_tap_gesture"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->DOZE_WAKE_SCREEN_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "doze_wake_screen_gesture"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->NFC_PAYMENT_DEFAULT_COMPONENT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "nfc_payment_default_component"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->AUTOMATIC_STORAGE_MANAGER_DAYS_TO_RETAIN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "automatic_storage_manager_days_to_retain"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->FACE_UNLOCK_KEYGUARD_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "face_unlock_keyguard_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->FACE_UNLOCK_DISMISSES_KEYGUARD_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "face_unlock_dismisses_keyguard"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->FACE_UNLOCK_APP_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "face_unlock_app_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->FACE_UNLOCK_ALWAYS_REQUIRE_CONFIRMATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "face_unlock_always_require_confirmation"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->FACE_UNLOCK_EDUCATION_INFO_DISPLAYED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "face_unlock_education_info_displayed"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "assist_gesture_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_SILENCE_ALERTS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "assist_gesture_silence_alerts_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ASSIST_GESTURE_WAKE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "assist_gesture_wake_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->VR_DISPLAY_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "vr_display_mode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->NOTIFICATION_BADGING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "notification_badging"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->NOTIFICATION_BUBBLES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "notification_bubbles"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->NOTIFICATION_DISMISS_RTL_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "notification_dismiss_rtl"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->QS_AUTO_ADDED_TILES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "qs_auto_tiles"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SCREENSAVER_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "screensaver_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SCREENSAVER_COMPONENTS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "screensaver_components"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SCREENSAVER_ACTIVATE_ON_DOCK_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "screensaver_activate_on_dock"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SCREENSAVER_ACTIVATE_ON_SLEEP_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "screensaver_activate_on_sleep"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->LOCKDOWN_IN_POWER_MENU_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "lockdown_in_power_menu"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SHOW_FIRST_CRASH_DIALOG_DEV_OPTION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "show_first_crash_dialog_dev_option"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->VOLUME_HUSH_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "volume_hush_gesture"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_LISTENERS_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "enabled_notification_listeners"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_ASSISTANT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "enabled_notification_assistant"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ENABLED_NOTIFICATION_POLICY_ACCESS_PACKAGES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "enabled_notification_policy_access_packages"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->HUSH_GESTURE_USED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "hush_gesture_used"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->MANUAL_RINGER_TOGGLE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "manual_ringer_toggle_count"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->IN_CALL_NOTIFICATION_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "in_call_notification_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "lock_screen_allow_private_notifications"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "lock_screen_show_notifications"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "lock_screen_show_silent_notifications"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "show_notification_snooze"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ZEN_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "zen_duration"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "show_zen_upgrade_notification"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "show_zen_settings_suggestion"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "zen_settings_updated"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "zen_settings_suggestion_viewed"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "charging_sounds_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "charging_vibration_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->WIFI_DISCONNECT_DELAY_DURATION_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "wifi_disconnect_delay_duration"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "accessibility_non_interactive_ui_timeout_ms"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->NON_NEGATIVE_INTEGER_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "accessibility_interactive_ui_timeout_ms"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "user_setup_complete"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "assist_gesture_setup_complete"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "new_interruption_model"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->TRUST_AGENTS_EXTEND_UNLOCK_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "trust_agents_extend_unlock"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->LOCK_SCREEN_CUSTOM_CLOCK_FACE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "lock_screen_custom_clock_face"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->LOCK_SCREEN_WHEN_TRUST_LOST_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "lock_screen_when_trust_lost"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SKIP_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "skip_gesture"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SILENCE_GESTURE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "silence_gesture"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->THEME_CUSTOMIZATION_OVERLAY_PACKAGES_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "theme_customization_overlay_packages"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->NAVIGATION_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "navigation_mode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->AWARE_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "aware_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SKIP_GESTURE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "skip_gesture_count"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SILENCE_GESTURE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "silence_alarms_gesture_count"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SILENCE_GESTURE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "silence_timer_gesture_count"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SILENCE_GESTURE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "silence_call_gesture_count"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->SILENCE_GESTURE_COUNT_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "silence_notification_gesture_count"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->ODI_CAPTIONS_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "odi_captions_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/SettingsValidators;->BOOLEAN_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "dark_mode_dialog_seen"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->UI_NIGHT_MODE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "ui_night_mode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->GLOBAL_ACTIONS_PANEL_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string/jumbo v3, "global_actions_panel_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/provider/Settings$Secure;->VALIDATORS:Ljava/util/Map;

    sget-object v1, Landroid/provider/Settings$Secure;->AWARE_LOCK_ENABLED_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    const-string v3, "aware_lock_enabled"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enabled_notification_listeners"

    const-string v1, "enabled_notification_assistant"

    const-string v3, "enabled_notification_policy_access_packages"

    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Secure;->LEGACY_RESTORE_SETTINGS:[Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "accessibility_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "allowed_geolocation_origins"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "content_capture_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_changer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "location_providers_allowed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string v1, "enabled_input_methods"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_input_method_subtype"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_spell_checker"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    const-string/jumbo v1, "selected_spell_checker_subtype"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "speak_password"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_preset"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_edge_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_edge_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_locale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_background_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_foreground_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_typeface"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_font_scale"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_captioning_window_color"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_autoclick_delay"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_autoclick_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "accessibility_large_pointer_icon"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "default_input_method"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "enabled_input_methods"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string v1, "android_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    const-string/jumbo v1, "package_verifier_user_consent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/provider/Settings$Secure;->INSTANT_APP_SETTINGS:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static clearProviderForTest()V
    .locals 1

    sget-object v0, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0}, Landroid/provider/Settings$ContentProviderHolder;->clearProviderForTest()V

    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->clearGenerationTrackerForTest()V

    return-void
.end method

.method public static getCloneToManagedProfileSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/provider/Settings$Secure;->CLONE_TO_MANAGED_PROFILE:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    return p2

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v1, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    return p2

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v1

    new-instance v2, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v2, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 3
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-static {p0, p1, p4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-wide v1, p2

    goto :goto_1

    :cond_0
    move-wide v1, p2

    :goto_0
    nop

    :goto_1
    return-wide v1
.end method

.method public static getMovedToGlobalSettings(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_LOCK_SETTINGS:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-class v0, Landroid/provider/Settings$Secure;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const-string/jumbo v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    sput-object v1, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v4, 0x3e8

    if-ne v1, v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    sput-boolean v1, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    if-eqz v0, :cond_5

    sget-boolean v0, Landroid/provider/Settings$Secure;->sIsSystemProcess:Z

    if-nez v0, :cond_5

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x16

    if-gt v1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    move v1, v2

    if-eqz v1, :cond_4

    :try_start_1
    sget-object v2, Landroid/provider/Settings$Secure;->sLockSettings:Lcom/android/internal/widget/ILockSettings;

    const-string v3, "0"

    invoke-interface {v2, p1, v3, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Settings.Secure."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is deprecated and no longer accessible. See API documentation for potential replacements."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_5
    :goto_2
    sget-object v0, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global, returning global URI."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Global;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/provider/Settings$Secure;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 8
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    sget-object v0, Landroid/provider/Settings$Secure;->MOVED_TO_GLOBAL:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has moved from android.provider.Settings.Secure to android.provider.Settings.Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p5}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0

    :cond_0
    sget-object v1, Landroid/provider/Settings$Secure;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static resetToDefaults(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    nop

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V

    return-void
.end method

.method public static resetToDefaultsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .locals 7

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "_user"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string v1, "_tag"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "_reset_mode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$Secure;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-static {v3}, Landroid/provider/Settings$ContentProviderHolder;->access$000(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RESET_secure"

    const/4 v5, 0x0

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t reset do defaults for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
