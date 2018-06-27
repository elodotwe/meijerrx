.class public Lti/modules/titanium/network/socket/SocketModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "SocketModule.java"


# static fields
.field public static final CLOSED:I = 0x4

.field public static final CONNECTED:I = 0x2

.field public static final ERROR:I = 0x5

.field public static final INITIALIZED:I = 0x1

.field public static final LISTENING:I = 0x3


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
    invoke-direct {p0}, Lti/modules/titanium/network/socket/SocketModule;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "Ti.Network.Socket"

    return-object v0
.end method
