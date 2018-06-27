.class public Lti/modules/titanium/ui/activityindicatorstyle/ActivityIndicatorStyleModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "ActivityIndicatorStyleModule.java"


# static fields
.field public static final BIG:I = 0x101007a

.field public static final BIG_DARK:I = 0x1010289

.field public static final DARK:I = 0x1010288

.field public static final PLAIN:I = 0x1010079


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 31
    invoke-direct {p0}, Lti/modules/titanium/ui/activityindicatorstyle/ActivityIndicatorStyleModule;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "Ti.UI.ActivityIndicatorStyle"

    return-object v0
.end method
