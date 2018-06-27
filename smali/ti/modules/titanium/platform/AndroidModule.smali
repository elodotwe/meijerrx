.class public Lti/modules/titanium/platform/AndroidModule;
.super Lti/modules/titanium/platform/PlatformModule;
.source "AndroidModule.java"


# static fields
.field public static final API_LEVEL:I

.field public static final PHYSICAL_SIZE_CATEGORY_LARGE:I = 0x3

.field public static final PHYSICAL_SIZE_CATEGORY_NORMAL:I = 0x2

.field public static final PHYSICAL_SIZE_CATEGORY_SMALL:I = 0x1

.field public static final PHYSICAL_SIZE_CATEGORY_UNDEFINED:I = 0x0

.field public static final PHYSICAL_SIZE_CATEGORY_XLARGE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lti/modules/titanium/platform/AndroidModule;->API_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lti/modules/titanium/platform/PlatformModule;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "Ti.Platform.Android"

    return-object v0
.end method

.method public getPhysicalSizeCategory()I
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 23
    .local v0, "size":I
    packed-switch v0, :pswitch_data_0

    .line 31
    const/4 v0, 0x0

    .end local v0    # "size":I
    :pswitch_0
    return v0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
