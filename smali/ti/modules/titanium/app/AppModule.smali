.class public Lti/modules/titanium/app/AppModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AppModule.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final EVENT_ACCESSIBILITY_ANNOUNCEMENT:Ljava/lang/String; = "accessibilityannouncement"

.field public static final EVENT_ACCESSIBILITY_CHANGED:Ljava/lang/String; = "accessibilitychanged"

.field private static final TAG:Ljava/lang/String; = "AppModule"


# instance fields
.field private accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

.field private appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

.field private proximityDetection:Z

.field private proximityEventListenerCount:I

.field private proximitySensorRegistered:Z

.field private proximityState:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-string v0, "App"

    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollModule;-><init>(Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    .line 53
    iput-boolean v1, p0, Lti/modules/titanium/app/AppModule;->proximitySensorRegistered:Z

    .line 54
    iput-boolean v1, p0, Lti/modules/titanium/app/AppModule;->proximityDetection:Z

    .line 56
    iput v1, p0, Lti/modules/titanium/app/AppModule;->proximityEventListenerCount:I

    .line 62
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->addAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V

    .line 63
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 68
    invoke-direct {p0}, Lti/modules/titanium/app/AppModule;-><init>()V

    .line 69
    return-void
.end method

.method private registerProximityListener()V
    .locals 2

    .prologue
    .line 329
    iget-boolean v0, p0, Lti/modules/titanium/app/AppModule;->proximitySensorRegistered:Z

    if-nez v0, :cond_0

    .line 330
    const/16 v0, 0x8

    const/4 v1, 0x3

    invoke-static {v0, p0, v1}, Lorg/appcelerator/titanium/util/TiSensorHelper;->registerListener(ILandroid/hardware/SensorEventListener;I)V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/app/AppModule;->proximitySensorRegistered:Z

    .line 333
    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForView(Lorg/appcelerator/titanium/proxy/TiViewProxy;I)V
    .locals 3
    .param p1, "viewProxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p2, "type"    # I

    .prologue
    .line 238
    invoke-virtual {p1}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getOrCreateView()Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/view/TiUIView;->getNativeView()Landroid/view/View;

    move-result-object v1

    .line 239
    .local v1, "view":Landroid/view/View;
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 240
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 241
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 243
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 244
    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 245
    return-void
.end method

.method private unRegisterProximityListener()V
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lti/modules/titanium/app/AppModule;->proximitySensorRegistered:Z

    if-eqz v0, :cond_0

    .line 338
    const/16 v0, 0x8

    invoke-static {v0, p0}, Lorg/appcelerator/titanium/util/TiSensorHelper;->unregisterListener(ILandroid/hardware/SensorEventListener;)V

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/app/AppModule;->proximitySensorRegistered:Z

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method public appURLToPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/app/AppModule;->resolveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 305
    iget v0, p0, Lti/modules/titanium/app/AppModule;->proximityEventListenerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lti/modules/titanium/app/AppModule;->proximityEventListenerCount:I

    .line 306
    iget-boolean v0, p0, Lti/modules/titanium/app/AppModule;->proximityDetection:Z

    if-eqz v0, :cond_0

    const-string v0, "proximity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lti/modules/titanium/app/AppModule;->registerProximityListener()V

    .line 309
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 310
    return-void
.end method

.method protected eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 319
    iget v0, p0, Lti/modules/titanium/app/AppModule;->proximityEventListenerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lti/modules/titanium/app/AppModule;->proximityEventListenerCount:I

    .line 320
    const-string v0, "proximity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-direct {p0}, Lti/modules/titanium/app/AppModule;->unRegisterProximityListener()V

    .line 324
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/appcelerator/kroll/KrollModule;->eventListenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V

    .line 325
    return-void
.end method

.method public fireSystemEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 185
    const-string v2, "accessibilityannouncement"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getAccessibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 188
    const-string v2, "AppModule"

    const-string v3, "Accessibility announcement ignored. Accessibility services are not enabled on this device."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local p2    # "arg":Ljava/lang/Object;
    :goto_0
    return-void

    .line 192
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    if-nez p2, :cond_1

    .line 193
    const-string v2, "AppModule"

    const-string v3, "Accessibility announcement ignored. No announcement text was provided."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 198
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 199
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 200
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 201
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-static {p2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 204
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    const-string v2, "accessibilityfocuschanged"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 206
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getAccessibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 207
    const-string v2, "AppModule"

    const-string v3, "Accessibility focus changed ignored. Accessibility services are not enabled on this device."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :cond_3
    if-nez p2, :cond_4

    .line 212
    const-string v2, "AppModule"

    const-string v3, "Accessibility focus changed ignored. No view was provided to request focus."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_4
    check-cast p2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local p2    # "arg":Ljava/lang/Object;
    const v2, 0x8000

    invoke-direct {p0, p2, v2}, Lti/modules/titanium/app/AppModule;->sendAccessibilityEventForView(Lorg/appcelerator/titanium/proxy/TiViewProxy;I)V

    goto :goto_0

    .line 218
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_5
    const-string v2, "accessibilityviewfocuschanged"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 220
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getAccessibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 221
    const-string v2, "AppModule"

    const-string v3, "Accessibility view focus changed ignored. Accessibility services are not enabled on this device."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_6
    if-nez p2, :cond_7

    .line 226
    const-string v2, "AppModule"

    const-string v3, "Accessibility  view focus changed ignored. No view was provided to request focus."

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_7
    check-cast p2, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .end local p2    # "arg":Ljava/lang/Object;
    const/16 v2, 0x8

    invoke-direct {p0, p2, v2}, Lti/modules/titanium/app/AppModule;->sendAccessibilityEventForView(Lorg/appcelerator/titanium/proxy/TiViewProxy;I)V

    goto/16 :goto_0

    .line 233
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_8
    const-string v2, "AppModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown system event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getAccessibilityEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 153
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 154
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 156
    .local v0, "enabled":Z
    if-nez v0, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_0

    .line 163
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 167
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v3

    .line 163
    goto :goto_0
.end method

.method public getAnalytics()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->isAnalyticsEnabled()Z

    move-result v0

    return v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    const-string v0, "Ti.App"

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getCopyright()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeployType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getDeployType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyboardVisible()Z
    .locals 1

    .prologue
    .line 376
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProximityDetection()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lti/modules/titanium/app/AppModule;->proximityDetection:Z

    return v0
.end method

.method public getProximityState()Z
    .locals 1

    .prologue
    .line 295
    iget-boolean v0, p0, Lti/modules/titanium/app/AppModule;->proximityState:Z

    return v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getPublisher()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getInstance()Lorg/appcelerator/titanium/util/TiPlatformHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lti/modules/titanium/app/AppModule;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->appInfo:Lorg/appcelerator/titanium/ITiAppInfo;

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideKeyboard()V
    .locals 4

    .prologue
    .line 381
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 382
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 383
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 385
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 388
    .end local v1    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 347
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/appcelerator/titanium/TiApplication;->removeAppEventProxy(Lorg/appcelerator/kroll/KrollProxy;)V

    .line 73
    return-void
.end method

.method public onHasListenersChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "hasListeners"    # Z

    .prologue
    .line 250
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollModule;->onHasListenersChanged(Ljava/lang/String;Z)V

    .line 254
    if-nez p2, :cond_1

    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    if-eqz v0, :cond_1

    .line 255
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lti/modules/titanium/app/AppModule$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/app/AppModule$1;-><init>(Lti/modules/titanium/app/AppModule;)V

    iput-object v0, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    .line 269
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getAccessibilityManager()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/app/AppModule;->accessibilityStateChangeListener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;)Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x0

    .line 352
    iput-boolean v3, p0, Lti/modules/titanium/app/AppModule;->proximityState:Z

    .line 353
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v2, v3

    .line 354
    .local v1, "distance":F
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 355
    const/4 v2, 0x1

    iput-boolean v2, p0, Lti/modules/titanium/app/AppModule;->proximityState:Z

    .line 357
    :cond_0
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 358
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v2, "type"

    const-string v3, "proximity"

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v2, "state"

    iget-boolean v3, p0, Lti/modules/titanium/app/AppModule;->proximityState:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v2, "proximity"

    invoke-virtual {p0, v2, v0}, Lti/modules/titanium/app/AppModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method public registerFont(Lorg/appcelerator/titanium/TiFileProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "fontFile"    # Lorg/appcelerator/titanium/TiFileProxy;
    .param p2, "fontFamily"    # Ljava/lang/String;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 365
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->loadTypeface(Lorg/appcelerator/titanium/TiFileProxy;Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public restart()V
    .locals 4

    .prologue
    .line 173
    invoke-static {}, Lorg/appcelerator/kroll/KrollRuntime;->getInstance()Lorg/appcelerator/kroll/KrollRuntime;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/kroll/KrollRuntime;->getKrollApplication()Lorg/appcelerator/kroll/KrollApplication;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 174
    .local v0, "app":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 175
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 176
    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method public setProximityDetection(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 282
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lti/modules/titanium/app/AppModule;->proximityDetection:Z

    .line 283
    iget-boolean v0, p0, Lti/modules/titanium/app/AppModule;->proximityDetection:Z

    if-eqz v0, :cond_1

    .line 284
    iget v0, p0, Lti/modules/titanium/app/AppModule;->proximityEventListenerCount:I

    if-lez v0, :cond_0

    .line 285
    invoke-direct {p0}, Lti/modules/titanium/app/AppModule;->registerProximityListener()V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-direct {p0}, Lti/modules/titanium/app/AppModule;->unRegisterProximityListener()V

    goto :goto_0
.end method

.method public unregisterFont(Lorg/appcelerator/titanium/TiFileProxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "fontFile"    # Lorg/appcelerator/titanium/TiFileProxy;
    .param p2, "fontFamily"    # Ljava/lang/String;
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end param

    .prologue
    .line 370
    invoke-static {p1, p2}, Lorg/appcelerator/titanium/util/TiUIHelper;->unloadTypeface(Lorg/appcelerator/titanium/TiFileProxy;Ljava/lang/String;)V

    .line 371
    return-void
.end method
