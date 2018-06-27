.class public Lti/modules/titanium/ui/android/AndroidModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AndroidModule.java"


# static fields
.field public static final LINKIFY_ALL:I = 0xf

.field public static final LINKIFY_EMAIL_ADDRESSES:I = 0x2

.field public static final LINKIFY_MAP_ADDRESSES:I = 0x8

.field public static final LINKIFY_PHONE_NUMBERS:I = 0x4

.field public static final LINKIFY_WEB_URLS:I = 0x1

.field public static final OVER_SCROLL_ALWAYS:I = 0x0

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1

.field public static final OVER_SCROLL_NEVER:I = 0x2

.field public static final PIXEL_FORMAT_A_8:I = 0x8

.field public static final PIXEL_FORMAT_LA_88:I = 0xa

.field public static final PIXEL_FORMAT_L_8:I = 0x9

.field public static final PIXEL_FORMAT_OPAQUE:I = -0x1

.field public static final PIXEL_FORMAT_RGBA_4444:I = 0x7

.field public static final PIXEL_FORMAT_RGBA_5551:I = 0x6

.field public static final PIXEL_FORMAT_RGBA_8888:I = 0x1

.field public static final PIXEL_FORMAT_RGBX_8888:I = 0x2

.field public static final PIXEL_FORMAT_RGB_332:I = 0xb

.field public static final PIXEL_FORMAT_RGB_565:I = 0x4

.field public static final PIXEL_FORMAT_RGB_888:I = 0x3

.field public static final PIXEL_FORMAT_TRANSLUCENT:I = -0x3

.field public static final PIXEL_FORMAT_TRANSPARENT:I = -0x2

.field public static final PIXEL_FORMAT_UNKNOWN:I = 0x0

.field public static final PROGRESS_INDICATOR_DETERMINANT:I = 0x1

.field public static final PROGRESS_INDICATOR_DIALOG:I = 0x1

.field public static final PROGRESS_INDICATOR_INDETERMINANT:I = 0x0

.field public static final PROGRESS_INDICATOR_STATUS_BAR:I = 0x0

.field public static final SOFT_INPUT_ADJUST_PAN:I = 0x20

.field public static final SOFT_INPUT_ADJUST_RESIZE:I = 0x10

.field public static final SOFT_INPUT_ADJUST_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_ALWAYS_HIDDEN:I = 0x3

.field public static final SOFT_INPUT_STATE_ALWAYS_VISIBLE:I = 0x5

.field public static final SOFT_INPUT_STATE_HIDDEN:I = 0x2

.field public static final SOFT_INPUT_STATE_UNSPECIFIED:I = 0x0

.field public static final SOFT_INPUT_STATE_VISIBLE:I = 0x4

.field public static final SOFT_KEYBOARD_DEFAULT_ON_FOCUS:I = 0x0

.field public static final SOFT_KEYBOARD_HIDE_ON_FOCUS:I = 0x1

.field public static final SOFT_KEYBOARD_SHOW_ON_FOCUS:I = 0x2

.field public static final SWITCH_STYLE_CHECKBOX:I = 0x0

.field public static final SWITCH_STYLE_SWITCH:I = 0x2

.field public static final SWITCH_STYLE_TOGGLEBUTTON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UIAndroidModule"

.field public static final WEBVIEW_LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final WEBVIEW_LOAD_CACHE_ONLY:I = 0x3

.field public static final WEBVIEW_LOAD_DEFAULT:I = -0x1

.field public static final WEBVIEW_LOAD_NO_CACHE:I = 0x2

.field public static final WEBVIEW_PLUGINS_OFF:I = 0x0

.field public static final WEBVIEW_PLUGINS_ON:I = 0x1

.field public static final WEBVIEW_PLUGINS_ON_DEMAND:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 104
    invoke-direct {p0}, Lti/modules/titanium/ui/android/AndroidModule;-><init>()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/android/AndroidModule;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/android/AndroidModule;

    .prologue
    .line 32
    iget-object v0, p0, Lti/modules/titanium/ui/android/AndroidModule;->activity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    const-string v0, "Ti.UI.Android"

    return-object v0
.end method

.method public hideSoftKeyboard()V
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/AndroidModule;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lti/modules/titanium/ui/android/AndroidModule$1;

    invoke-direct {v1, p0}, Lti/modules/titanium/ui/android/AndroidModule$1;-><init>(Lti/modules/titanium/ui/android/AndroidModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method

.method public openPreferences(Ljava/lang/String;)V
    .locals 5
    .param p1, "prefsName"    # Ljava/lang/String;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 111
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lti/modules/titanium/ui/android/TiPreferencesActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v1, "i":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 116
    const-string v2, "prefsName"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 122
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v2, "UIAndroidModule"

    const-string v3, "Unable to open preferences. Activity is null"

    const-string v4, "DEBUG_MODE"

    invoke-static {v2, v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
