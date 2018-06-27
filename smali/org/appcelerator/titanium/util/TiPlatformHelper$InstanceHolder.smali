.class Lorg/appcelerator/titanium/util/TiPlatformHelper$InstanceHolder;
.super Ljava/lang/Object;
.source "TiPlatformHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiPlatformHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lorg/appcelerator/titanium/util/TiPlatformHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lorg/appcelerator/titanium/util/TiPlatformHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiPlatformHelper;-><init>(Lorg/appcelerator/titanium/util/TiPlatformHelper$1;)V

    sput-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper$InstanceHolder;->INSTANCE:Lorg/appcelerator/titanium/util/TiPlatformHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/appcelerator/titanium/util/TiPlatformHelper;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/appcelerator/titanium/util/TiPlatformHelper$InstanceHolder;->INSTANCE:Lorg/appcelerator/titanium/util/TiPlatformHelper;

    return-object v0
.end method
