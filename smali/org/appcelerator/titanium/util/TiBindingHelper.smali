.class public Lorg/appcelerator/titanium/util/TiBindingHelper;
.super Ljava/lang/Object;
.source "TiBindingHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindCurrentActivity(Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 0
    .param p0, "currentActivityProxy"    # Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .prologue
    .line 19
    return-void
.end method

.method public static bindCurrentService(Lorg/appcelerator/titanium/proxy/ServiceProxy;)V
    .locals 0
    .param p0, "currentService"    # Lorg/appcelerator/titanium/proxy/ServiceProxy;

    .prologue
    .line 22
    return-void
.end method

.method public static bindCurrentWindow(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p0, "currentWindow"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 25
    return-void
.end method

.method public static bindCurrentWindowAndActivity(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lorg/appcelerator/titanium/proxy/ActivityProxy;)V
    .locals 0
    .param p0, "currentWindow"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .param p1, "currentActivityProxy"    # Lorg/appcelerator/titanium/proxy/ActivityProxy;

    .prologue
    .line 29
    return-void
.end method
