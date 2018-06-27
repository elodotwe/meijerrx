.class public Lappcelerator/https/HttpsBootstrap;
.super Ljava/lang/Object;
.source "HttpsBootstrap.java"

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
    invoke-direct {p0}, Lappcelerator/https/HttpsBootstrap;->nativeBootstrap()V

    .line 18
    return-void
.end method
