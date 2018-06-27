.class public Lti/modules/titanium/ui/AttributeProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "AttributeProxy.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "Ti.UI.Attribute"

    return-object v0
.end method
