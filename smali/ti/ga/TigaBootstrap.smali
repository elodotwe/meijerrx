.class public Lti/ga/TigaBootstrap;
.super Ljava/lang/Object;
.source "TigaBootstrap.java"

# interfaces
.implements Lorg/appcelerator/kroll/KrollExternalModule;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeBootstrap()V
.end method


# virtual methods
.method public bootstrap()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lti/ga/TigaBootstrap;->nativeBootstrap()V

    .line 18
    return-void
.end method
