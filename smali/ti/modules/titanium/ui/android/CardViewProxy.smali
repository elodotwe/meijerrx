.class public Lti/modules/titanium/ui/android/CardViewProxy;
.super Lorg/appcelerator/titanium/proxy/TiViewProxy;
.source "CardViewProxy.java"


# static fields
.field private static final MSG_FIRST_ID:I = 0xd4

.field protected static final MSG_LAST_ID:I = 0x4bb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 54
    invoke-direct {p0}, Lti/modules/titanium/ui/android/CardViewProxy;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    new-instance v0, Lti/modules/titanium/ui/widget/TiUICardView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUICardView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "Ti.UI.Android.CardView"

    return-object v0
.end method
