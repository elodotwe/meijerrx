.class public Lti/modules/titanium/platform/PlatformModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "PlatformModule.java"


# static fields
.field public static final BATTERY_STATE_CHARGING:I = 0x2

.field public static final BATTERY_STATE_FULL:I = 0x3

.field public static final BATTERY_STATE_UNKNOWN:I = 0x0

.field public static final BATTERY_STATE_UNPLUGGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PlatformModule"


# instance fields
.field protected batteryLevel:D

.field protected batteryState:I

.field protected batteryStateReady:Z

.field protected batteryStateReceiver:Landroid/content/BroadcastReceiver;

.field protected displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryState:I

    .line 53
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryLevel:D

    .line 54
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 58
    invoke-direct {p0}, Lti/modules/titanium/platform/PlatformModule;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/platform/PlatformModule;II)D
    .locals 2
    .param p0, "x0"    # Lti/modules/titanium/platform/PlatformModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/platform/PlatformModule;->convertBatteryLevel(II)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lti/modules/titanium/platform/PlatformModule;I)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/platform/PlatformModule;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lti/modules/titanium/platform/PlatformModule;->convertBatteryStatus(I)I

    move-result v0

    return v0
.end method

.method private convertBatteryLevel(II)D
    .locals 4
    .param p1, "level"    # I
    .param p2, "scale"    # I

    .prologue
    .line 297
    const/4 v0, -0x1

    .line 298
    .local v0, "l":I
    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    .line 299
    mul-int/lit8 v1, p1, 0x64

    div-int v0, v1, p2

    .line 301
    :cond_0
    int-to-double v2, v0

    return-wide v2
.end method

.method private convertBatteryStatus(I)I
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "state":I
    packed-switch p1, :pswitch_data_0

    .line 292
    :goto_0
    return v0

    .line 279
    :pswitch_0
    const/4 v0, 0x2

    .line 280
    goto :goto_0

    .line 283
    :pswitch_1
    const/4 v0, 0x3

    .line 284
    goto :goto_0

    .line 288
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private registerBatteryReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "batteryReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 306
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 307
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, "batteryFilter":Landroid/content/IntentFilter;
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    return-void
.end method


# virtual methods
.method public createUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 258
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 259
    const-string v0, "battery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryStateReceiver()V

    .line 262
    :cond_0
    return-void
.end method

.method public eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 267
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 268
    const-string v0, "battery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    :cond_0
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    const-string v0, "Ti.Platform"

    return-object v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableMemory()D
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getAvailableMemory()D

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryLevel()D
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryLevel:D

    return-wide v0
.end method

.method public getBatteryMonitoring()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBatteryState()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryState:I

    return v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 145
    .local v0, "app":Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v1

    .line 148
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "MM/dd/yyyy"

    goto :goto_0
.end method

.method public getDisplayCaps()Lti/modules/titanium/platform/DisplayCapsProxy;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lti/modules/titanium/platform/DisplayCapsProxy;

    invoke-direct {v0}, Lti/modules/titanium/platform/DisplayCapsProxy;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    .line 80
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lti/modules/titanium/platform/DisplayCapsProxy;->setActivity(Landroid/app/Activity;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacaddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMacaddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getNetmask()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOstype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getOstype()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorCount()I
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getProcessorCount()I

    move-result v0

    return v0
.end method

.method public getRuntime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/kroll/KrollRuntime;->getRuntimeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is24HourTimeFormat()Z
    .locals 2

    .prologue
    .line 154
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 155
    .local v0, "app":Lorg/appcelerator/titanium/TiApplication;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 158
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 334
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onDestroy(Landroid/app/Activity;)V

    .line 335
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 339
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 324
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onPause(Landroid/app/Activity;)V

    .line 325
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 314
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onResume(Landroid/app/Activity;)V

    .line 315
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "PlatformModule"

    const-string v1, "Reregistering battery changed receiver"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    :cond_0
    return-void
.end method

.method public openURL(Ljava/lang/String;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string v4, "PlatformModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Launching viewer for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 170
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 172
    .local v2, "intent":Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppRootOrCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 174
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 179
    const/4 v4, 0x1

    .line 183
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return v4

    .line 177
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    new-instance v4, Landroid/content/ActivityNotFoundException;

    const-string v5, "No valid root or current activity found for application instance"

    invoke-direct {v4, v5}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "PlatformModule"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected registerBatteryStateReceiver()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lti/modules/titanium/platform/PlatformModule$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/platform/PlatformModule$1;-><init>(Lti/modules/titanium/platform/PlatformModule;)V

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    return-void
.end method

.method public setBatteryMonitoring(Z)V
    .locals 1
    .param p1, "monitor"    # Z

    .prologue
    .line 199
    if-eqz p1, :cond_1

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryStateReceiver()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

.method protected unregisterBatteryStateReceiver()V
    .locals 2

    .prologue
    .line 252
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    return-void
.end method
