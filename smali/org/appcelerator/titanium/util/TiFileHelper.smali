.class public Lorg/appcelerator/titanium/util/TiFileHelper;
.super Ljava/lang/Object;
.source "TiFileHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MACOSX_PREFIX:Ljava/lang/String; = "__MACOSX"

.field private static final MSG_NETWORK_URL:I = 0x64

.field public static final RESOURCE_ROOT_ASSETS:Ljava/lang/String; = "file:///android_asset/Resources"

.field public static final SD_CARD_PREFIX:Ljava/lang/String; = "/sdcard/Ti.debug"

.field private static final TAG:Ljava/lang/String; = "TiFileHelper"

.field public static final TI_DIR:Ljava/lang/String; = "tiapp"

.field public static final TI_DIR_JS:Ljava/lang/String; = "tijs"

.field private static final TI_RESOURCE_PREFIX:Ljava/lang/String; = "ti:"

.field private static _instance:Lorg/appcelerator/titanium/util/TiFileHelper;

.field private static foundResourcePathCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static notFoundResourcePathCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static resourcePathCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static systemIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nph:Lorg/appcelerator/titanium/util/TiNinePatchHelper;

.field protected runtimeHandler:Landroid/os/Handler;

.field private softContext:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private tempFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->_instance:Lorg/appcelerator/titanium/util/TiFileHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->runtimeHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->tempFiles:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    .line 81
    new-instance v0, Lorg/appcelerator/titanium/util/TiNinePatchHelper;

    invoke-direct {v0}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;-><init>()V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->nph:Lorg/appcelerator/titanium/util/TiNinePatchHelper;

    .line 82
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->notFoundResourcePathCache:Ljava/util/HashSet;

    .line 88
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->notFoundResourcePathCache:Ljava/util/HashSet;

    .line 94
    :cond_1
    const-string v1, "tiapp"

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    .line 97
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_camera"

    const v3, 0x1080037

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_search"

    const v3, 0x108004f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_add"

    const v3, 0x1080033

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_delete"

    const v3, 0x108003c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_play"

    const v3, 0x1080024

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_ff"

    const v3, 0x1080021

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_pause"

    const v3, 0x1080023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_rew"

    const v3, 0x1080026

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_edit"

    const v3, 0x108003e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_close_clear_cancel"

    const v3, 0x1080038

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_save"

    const v3, 0x108004e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_help"

    const v3, 0x1080040

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_next"

    const v3, 0x1080022

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_preferences"

    const v3, 0x1080049

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_media_previous"

    const v3, 0x1080025

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_revert"

    const v3, 0x108004c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_send"

    const v3, 0x1080050

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_share"

    const v3, 0x1080052

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_view"

    const v3, 0x1080057

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    const-string v2, "ic_menu_zoom"

    const v3, 0x1080059

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_2
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lorg/appcelerator/titanium/util/TiFileHelper;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->_instance:Lorg/appcelerator/titanium/util/TiFileHelper;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lorg/appcelerator/titanium/util/TiFileHelper;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->_instance:Lorg/appcelerator/titanium/util/TiFileHelper;

    .line 146
    :cond_0
    sget-object v0, Lorg/appcelerator/titanium/util/TiFileHelper;->_instance:Lorg/appcelerator/titanium/util/TiFileHelper;

    return-object v0
.end method

.method private getRootDir(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "zis"    # Ljava/util/zip/ZipInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 746
    const-string v1, ""

    .line 748
    .local v1, "root":Ljava/lang/String;
    const/4 v3, 0x0

    .line 749
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 750
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 753
    const-string v4, "__MACOSX"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 756
    const-string v4, "tiapp.xml"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 757
    const-string v4, "\\/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 758
    .local v2, "segments":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 767
    .end local v0    # "name":Ljava/lang/String;
    .end local v2    # "segments":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 761
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v2    # "segments":[Ljava/lang/String;
    :cond_2
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_0
.end method

.method private getRuntimeHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->runtimeHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/appcelerator/kroll/common/TiMessenger;->getRuntimeMessenger()Lorg/appcelerator/kroll/common/TiMessenger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/TiMessenger;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->runtimeHandler:Landroid/os/Handler;

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->runtimeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getZipInputStream(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private handleNetworkURL(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const/4 v5, 0x0

    .line 232
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 233
    .local v9, "uri":Ljava/net/URI;
    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 234
    invoke-static {v9}, Lorg/appcelerator/titanium/util/TiResponseCache;->openCachedStream(Ljava/net/URI;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 235
    .local v7, "stream":Ljava/io/InputStream;
    if-eqz v7, :cond_0

    .line 279
    .end local v7    # "stream":Ljava/io/InputStream;
    .end local v9    # "uri":Ljava/net/URI;
    :goto_0
    return-object v7

    .line 240
    :catch_0
    move-exception v10

    .line 243
    :cond_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 244
    .local v8, "u":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 245
    .local v6, "lis":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 247
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x2000

    invoke-direct {v1, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 249
    .local v3, "count":I
    const/16 v10, 0x2000

    :try_start_2
    new-array v2, v10, [B

    .line 251
    .local v2, "buf":[B
    :goto_1
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v10, -0x1

    if-eq v3, v10, :cond_3

    .line 252
    const/4 v10, 0x0

    invoke-virtual {v1, v2, v10, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 257
    .end local v2    # "buf":[B
    .end local v5    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    move-object v0, v1

    .line 259
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "count":I
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v10, "TiFileHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problem pulling image data from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_3
    if-eqz v6, :cond_1

    .line 264
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 265
    const/4 v6, 0x0

    .line 270
    :cond_1
    :goto_4
    if-eqz v0, :cond_2

    .line 272
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 273
    const/4 v0, 0x0

    .line 276
    :cond_2
    :goto_5
    throw v10

    .line 255
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "count":I
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_3
    :try_start_6
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .end local v5    # "is":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 262
    .restart local v5    # "is":Ljava/io/InputStream;
    if-eqz v6, :cond_4

    .line 264
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 265
    const/4 v6, 0x0

    .line 270
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    .line 272
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 273
    const/4 v0, 0x0

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :goto_7
    move-object v7, v5

    .line 279
    goto :goto_0

    .line 274
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v10

    move-object v0, v1

    .line 276
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 266
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v10

    goto :goto_6

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buf":[B
    .end local v3    # "count":I
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v11

    goto :goto_4

    .line 274
    :catch_5
    move-exception v11

    goto :goto_5

    .line 262
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "count":I
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 257
    .end local v3    # "count":I
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v4

    goto :goto_2

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "count":I
    :cond_5
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_7
.end method

.method private titaniumPath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 734
    const-string v0, ""

    if-eq p1, v0, :cond_0

    const-string v0, "tiapp.xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Resources"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private walkAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "am"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 712
    .local p3, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->titaniumPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 713
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "files":[Ljava/lang/String;
    array-length v4, v0

    if-lez v4, :cond_2

    .line 715
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 716
    aget-object v2, v0, v1

    .line 717
    .local v2, "newPath":Ljava/lang/String;
    move-object v3, p2

    .line 718
    .local v3, "todo":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 719
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 723
    :goto_1
    invoke-direct {p0, v3}, Lorg/appcelerator/titanium/util/TiFileHelper;->titaniumPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 725
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-direct {p0, p1, v3, p3}, Lorg/appcelerator/titanium/util/TiFileHelper;->walkAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 715
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 721
    :cond_1
    move-object v3, v2

    goto :goto_1

    .line 731
    .end local v0    # "files":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "newPath":Ljava/lang/String;
    .end local v3    # "todo":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private wipeDirectoryTree(Ljava/io/File;Ljava/util/SortedSet;)V
    .locals 7
    .param p1, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p2, "dirs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 695
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 696
    array-length v3, v1

    .line 697
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 698
    aget-object v0, v1, v2

    .line 699
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 700
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 701
    invoke-direct {p0, v0, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;Ljava/util/SortedSet;)V

    .line 697
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    :cond_0
    const-string v4, "TiFileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting File: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 708
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    return-void
.end method


# virtual methods
.method public deployFromAssets(Ljava/io/File;)V
    .locals 20
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    .line 451
    .local v6, "ctx":Landroid/content/Context;
    if-eqz v6, :cond_5

    .line 452
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v15, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 454
    .local v2, "am":Landroid/content/res/AssetManager;
    const-string v17, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v2, v1, v15}, Lorg/appcelerator/titanium/util/TiFileHelper;->walkAssets(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 457
    invoke-virtual/range {p0 .. p1}, Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;)V

    .line 460
    const/4 v3, 0x0

    .line 461
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    .line 462
    .local v10, "fos":Ljava/io/FileOutputStream;
    const/16 v17, 0x1fa0

    move/from16 v0, v17

    new-array v5, v0, [B

    .line 464
    .local v5, "buf":[B
    :try_start_0
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    .line 465
    .local v13, "len":I
    const/4 v12, 0x0

    .local v12, "i":I
    move-object v11, v10

    .local v11, "fos":Ljava/lang/Object;
    move-object v4, v3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v4, "bis":Ljava/lang/Object;
    :goto_0
    if-ge v12, v13, :cond_4

    .line 466
    :try_start_1
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 467
    .local v14, "path":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    .local v9, "f":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 469
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    const/16 v18, 0x1fa0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v3, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 470
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v8, Ljava/io/File;

    .end local v4    # "bis":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-direct {v8, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 471
    .local v8, "df":Ljava/io/File;
    const-string v17, "TiFileHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Copying to: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "DEBUG_MODE"

    invoke-static/range {v17 .. v19}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 474
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .line 475
    .end local v11    # "fos":Ljava/lang/Object;
    .local v16, "read":I
    :goto_1
    :try_start_3
    invoke-virtual {v3, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    .line 476
    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v10, v5, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 490
    .end local v8    # "df":Ljava/io/File;
    .end local v9    # "f":Ljava/io/File;
    .end local v12    # "i":I
    .end local v13    # "len":I
    .end local v14    # "path":Ljava/lang/String;
    .end local v16    # "read":I
    :catchall_0
    move-exception v17

    :goto_2
    if-eqz v3, :cond_0

    .line 492
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 496
    :goto_3
    const/4 v3, 0x0

    .line 498
    :cond_0
    if-eqz v10, :cond_1

    .line 500
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 504
    :goto_4
    const/4 v10, 0x0

    :cond_1
    throw v17

    .line 479
    .restart local v8    # "df":Ljava/io/File;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v12    # "i":I
    .restart local v13    # "len":I
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v16    # "read":I
    :cond_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 480
    const/4 v3, 0x0

    .line 481
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 482
    const/4 v10, 0x0

    .line 465
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "df":Ljava/io/File;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "read":I
    :goto_5
    add-int/lit8 v12, v12, 0x1

    move-object v11, v10

    .restart local v11    # "fos":Ljava/lang/Object;
    move-object v4, v3

    .restart local v4    # "bis":Ljava/lang/Object;
    goto/16 :goto_0

    .line 484
    :cond_3
    :try_start_7
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 485
    .local v7, "d":Ljava/io/File;
    const-string v17, "TiFileHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Creating directory: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v10, v11

    .end local v11    # "fos":Ljava/lang/Object;
    .local v10, "fos":Ljava/lang/Object;
    move-object v3, v4

    .end local v4    # "bis":Ljava/lang/Object;
    .local v3, "bis":Ljava/lang/Object;
    goto :goto_5

    .line 490
    .end local v3    # "bis":Ljava/lang/Object;
    .end local v7    # "d":Ljava/io/File;
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "fos":Ljava/lang/Object;
    .end local v14    # "path":Ljava/lang/String;
    .restart local v4    # "bis":Ljava/lang/Object;
    .restart local v11    # "fos":Ljava/lang/Object;
    :cond_4
    if-eqz v4, :cond_6

    .line 492
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 496
    :goto_6
    const/4 v3, 0x0

    .line 498
    .end local v4    # "bis":Ljava/lang/Object;
    :goto_7
    if-eqz v11, :cond_5

    .line 500
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 504
    :goto_8
    const/4 v10, 0x0

    .line 508
    .end local v2    # "am":Landroid/content/res/AssetManager;
    .end local v5    # "buf":[B
    .end local v11    # "fos":Ljava/lang/Object;
    .end local v12    # "i":I
    .end local v13    # "len":I
    .end local v15    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    return-void

    .line 493
    .restart local v2    # "am":Landroid/content/res/AssetManager;
    .restart local v4    # "bis":Ljava/lang/Object;
    .restart local v5    # "buf":[B
    .restart local v11    # "fos":Ljava/lang/Object;
    .restart local v12    # "i":I
    .restart local v13    # "len":I
    .restart local v15    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v17

    goto :goto_6

    .line 501
    .end local v4    # "bis":Ljava/lang/Object;
    :catch_1
    move-exception v17

    goto :goto_8

    .line 493
    .end local v11    # "fos":Ljava/lang/Object;
    .end local v12    # "i":I
    .end local v13    # "len":I
    .local v3, "bis":Ljava/io/BufferedInputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v18

    goto :goto_3

    .line 501
    :catch_3
    move-exception v18

    goto :goto_4

    .line 490
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "bis":Ljava/lang/Object;
    .restart local v11    # "fos":Ljava/lang/Object;
    .restart local v12    # "i":I
    .restart local v13    # "len":I
    :catchall_1
    move-exception v17

    move-object v10, v11

    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_2

    .end local v4    # "bis":Ljava/lang/Object;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v14    # "path":Ljava/lang/String;
    :catchall_2
    move-exception v17

    move-object v10, v11

    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .end local v9    # "f":Ljava/io/File;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "path":Ljava/lang/String;
    .restart local v4    # "bis":Ljava/lang/Object;
    :cond_6
    move-object v3, v4

    .end local v4    # "bis":Ljava/lang/Object;
    .local v3, "bis":Ljava/lang/Object;
    goto :goto_7
.end method

.method public deployFromZip(Ljava/io/File;Ljava/io/File;)V
    .locals 13
    .param p1, "fname"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;)V

    .line 515
    const/4 v9, 0x0

    .line 516
    .local v9, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v8, 0x0

    .line 517
    .local v8, "ze":Ljava/util/zip/ZipEntry;
    const/16 v10, 0x1fa0

    new-array v0, v10, [B

    .line 521
    .local v0, "buf":[B
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v10}, Lorg/appcelerator/titanium/util/TiFileHelper;->getZipInputStream(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;

    move-result-object v9

    .line 522
    invoke-direct {p0, v9}, Lorg/appcelerator/titanium/util/TiFileHelper;->getRootDir(Ljava/util/zip/ZipInputStream;)Ljava/lang/String;

    move-result-object v6

    .line 523
    .local v6, "root":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 524
    .local v7, "rootLen":I
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V

    .line 526
    const-string v10, "TiFileHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Zip file root: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "DEBUG_MODE"

    invoke-static {v10, v11, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v10}, Lorg/appcelerator/titanium/util/TiFileHelper;->getZipInputStream(Ljava/io/InputStream;)Ljava/util/zip/ZipInputStream;

    move-result-object v9

    .line 530
    :goto_0
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 531
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 532
    .local v4, "name":Ljava/lang/String;
    const-string v10, "__MACOSX"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 533
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 569
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "root":Ljava/lang/String;
    .end local v7    # "rootLen":I
    :catchall_0
    move-exception v10

    if-eqz v9, :cond_0

    .line 571
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 574
    :cond_0
    :goto_1
    throw v10

    .line 537
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "root":Ljava/lang/String;
    .restart local v7    # "rootLen":I
    :cond_1
    :try_start_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 539
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 540
    const-string v10, "TiFileHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Extracting "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "DEBUG_MODE"

    invoke-static {v10, v11, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 542
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 543
    .local v1, "d":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 544
    const-string v10, "TiFileHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Created directory "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "DEBUG_MODE"

    invoke-static {v10, v11, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .end local v1    # "d":Ljava/io/File;
    :cond_2
    :goto_2
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 547
    :cond_3
    const/4 v2, 0x0

    .line 549
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 550
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 551
    .local v5, "read":I
    :goto_3
    :try_start_4
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_5

    .line 552
    const/4 v10, 0x0

    invoke-virtual {v3, v0, v10, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 555
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "read":I
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    if-eqz v2, :cond_4

    .line 557
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 560
    :cond_4
    :goto_5
    :try_start_6
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 555
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "read":I
    :cond_5
    if-eqz v3, :cond_2

    .line 557
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 558
    :catch_0
    move-exception v10

    goto :goto_2

    .line 569
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "read":I
    :cond_6
    if-eqz v9, :cond_7

    .line 571
    :try_start_8
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 577
    :cond_7
    :goto_6
    return-void

    .line 558
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "name":Ljava/lang/String;
    :catch_1
    move-exception v11

    goto :goto_5

    .line 572
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "name":Ljava/lang/String;
    :catch_2
    move-exception v10

    goto :goto_6

    .end local v6    # "root":Ljava/lang/String;
    .end local v7    # "rootLen":I
    :catch_3
    move-exception v11

    goto/16 :goto_1

    .line 555
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "root":Ljava/lang/String;
    .restart local v7    # "rootLen":I
    :catchall_2
    move-exception v10

    goto :goto_4
.end method

.method public destroyTempFiles()V
    .locals 3

    .prologue
    .line 658
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->tempFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 659
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 662
    .end local v1    # "tempFile":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->tempFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 663
    return-void
.end method

.method public getDataDirectory(Z)Ljava/io/File;
    .locals 5
    .param p1, "privateStorage"    # Z

    .prologue
    .line 673
    const/4 v1, 0x0

    .line 674
    .local v1, "f":Ljava/io/File;
    iget-object v3, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 675
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 677
    if-eqz p1, :cond_1

    .line 679
    const-string v3, "appdata"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 691
    :cond_0
    :goto_0
    return-object v1

    .line 683
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 684
    .local v2, "storageDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1    # "f":Ljava/io/File;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 685
    .restart local v1    # "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 687
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public getResourceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 429
    const-string v0, "file:///android_asset/Resources"

    invoke-virtual {p0, v0, p1}, Lorg/appcelerator/titanium/util/TiFileHelper;->joinPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempFile(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;
    .locals 5
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "destroyOnExit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    const/4 v1, 0x0

    .line 614
    .local v1, "result":Ljava/io/File;
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 615
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 616
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 617
    const-string v2, "TiFileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTempFile: Directory \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not exist. Call to File.createTempFile() will fail."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    const-string v2, "tia"

    invoke-static {v2, p2, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 622
    if-eqz p3, :cond_1

    .line 623
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->tempFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_1
    return-object v1
.end method

.method public getTempFile(Ljava/lang/String;Z)Ljava/io/File;
    .locals 3
    .param p1, "suffix"    # Ljava/lang/String;
    .param p2, "destroyOnExit"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 601
    const/4 v1, 0x0

    .line 602
    .local v1, "result":Ljava/io/File;
    iget-object v2, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 604
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->getTempFile(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 607
    :cond_0
    return-object v1
.end method

.method public getTempFileFromInputStream(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/io/File;
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "destroyOnExit"    # Z

    .prologue
    .line 632
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lorg/appcelerator/titanium/util/TiFileHelper;->getTempFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    .line 634
    .local v4, "tempFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 635
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 637
    .local v0, "bytes":[B
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 639
    .local v3, "os":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 640
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 646
    .end local v0    # "bytes":[B
    .end local v2    # "length":I
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "tempFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 647
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v5, "TiFileHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not find temp file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v4, 0x0

    :cond_0
    :goto_2
    return-object v4

    .line 642
    .restart local v0    # "bytes":[B
    .restart local v2    # "length":I
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v4    # "tempFile":Ljava/io/File;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 648
    .end local v0    # "bytes":[B
    .end local v2    # "length":I
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .end local v4    # "tempFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 649
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "TiFileHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error occurred while creating output stream from temp file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getTitaniumResource(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->isTitaniumResource(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 387
    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "parts":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 389
    const-string v6, "TiFileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Malformed titanium resource url, resource not loaded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v6, 0x0

    .line 424
    .end local v3    # "parts":[Ljava/lang/String;
    :goto_0
    return-object v6

    .line 392
    .restart local v3    # "parts":[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    aget-object v5, v3, v6

    .line 393
    .local v5, "section":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v4, v3, v6

    .line 395
    .local v4, "resid":Ljava/lang/String;
    const-string v6, "ti:"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 396
    const/4 v2, 0x0

    .line 398
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    const-class v6, Lorg/appcelerator/titanium/util/TiFileHelper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/org/appcelerator/titanium/res/drawable/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 399
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 403
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "resid":Ljava/lang/String;
    .end local v5    # "section":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v6, v0

    .line 424
    goto :goto_0

    .line 401
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "parts":[Ljava/lang/String;
    .restart local v4    # "resid":Ljava/lang/String;
    .restart local v5    # "section":Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v2, :cond_2

    .line 403
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 406
    :cond_2
    :goto_2
    throw v6

    .line 409
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    const-string v6, "Sys"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 410
    sget-object v6, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 411
    .local v1, "id":Ljava/lang/Integer;
    if-eqz v1, :cond_4

    .line 412
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 414
    :cond_4
    const-string v6, "TiFileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Drawable not found for system id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 417
    .end local v1    # "id":Ljava/lang/Integer;
    :cond_5
    const-string v6, "TiFileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown section identifier: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 421
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "resid":Ljava/lang/String;
    .end local v5    # "section":Ljava/lang/String;
    :cond_6
    const-string v6, "TiFileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring non titanium resource string id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 404
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "parts":[Ljava/lang/String;
    .restart local v4    # "resid":Ljava/lang/String;
    .restart local v5    # "section":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v7

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 772
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 782
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 774
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/appcelerator/kroll/common/AsyncResult;

    .line 776
    .local v1, "result":Lorg/appcelerator/kroll/common/AsyncResult;
    :try_start_0
    invoke-virtual {v1}, Lorg/appcelerator/kroll/common/AsyncResult;->getArg()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/appcelerator/titanium/util/TiFileHelper;->handleNetworkURL(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 772
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public isTitaniumResource(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "result":Z
    if-eqz p1, :cond_0

    const-string v1, "ti:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    const/4 v0, 0x1

    .line 379
    :cond_0
    return v0
.end method

.method public joinPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "pre"    # Ljava/lang/String;
    .param p2, "post"    # Ljava/lang/String;

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 437
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 439
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 440
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 442
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public loadDrawable(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "report"    # Z

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadDrawable(Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "report"    # Z
    .param p3, "checkForNinePatch"    # Z

    .prologue
    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/appcelerator/titanium/util/TiFileHelper;->loadDrawable(Ljava/lang/String;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadDrawable(Ljava/lang/String;ZZZ)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "report"    # Z
    .param p3, "checkForNinePatch"    # Z
    .param p4, "densityScaled"    # Z

    .prologue
    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .line 313
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 314
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 370
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v3

    .line 320
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p3, :cond_6

    if-eqz p1, :cond_6

    :try_start_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 321
    const-string v6, ".png"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 322
    const-string v6, ".9.png"

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, "apath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".9.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 327
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v6}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 328
    if-eqz v5, :cond_1

    .line 329
    move-object p1, v0

    .line 336
    .end local v0    # "apath":Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v5, :cond_2

    .line 337
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v5

    .line 339
    :cond_2
    const/4 v1, 0x0

    .line 340
    .local v1, "b":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_5

    .line 341
    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->createDensityScaledBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 345
    :goto_2
    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiFileHelper;->nph:Lorg/appcelerator/titanium/util/TiNinePatchHelper;

    invoke-virtual {v6, v1}, Lorg/appcelerator/titanium/util/TiNinePatchHelper;->process(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 361
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 363
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .end local v1    # "b":Landroid/graphics/Bitmap;
    :cond_4
    :goto_4
    move-object v3, v2

    .line 370
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 331
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "apath":Ljava/lang/String;
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v4

    .line 332
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    const-string v6, "TiFileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "path not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 358
    .end local v0    # "apath":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 359
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_5
    const-string v6, "TiFileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 361
    if-eqz v5, :cond_4

    .line 363
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 364
    :catch_2
    move-exception v6

    goto :goto_4

    .line 343
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_7
    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 347
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/appcelerator/titanium/util/TiFileHelper;->openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v5

    .line 348
    const/4 v1, 0x0

    .line 349
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    if-eqz p4, :cond_7

    .line 350
    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->createDensityScaledBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 354
    :goto_5
    if-eqz v1, :cond_3

    .line 355
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    move-object v2, v3

    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 352
    :cond_7
    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->createBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    goto :goto_5

    .line 361
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_8

    .line 363
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 366
    :cond_8
    :goto_6
    throw v6

    .line 364
    .restart local v1    # "b":Landroid/graphics/Bitmap;
    :catch_3
    move-exception v6

    goto :goto_4

    .end local v1    # "b":Landroid/graphics/Bitmap;
    :catch_4
    move-exception v7

    goto :goto_6
.end method

.method public openInputStream(Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 19
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "report"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v7, 0x0

    .line 154
    .local v7, "is":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/appcelerator/titanium/util/TiFileHelper;->softContext:Ljava/lang/ref/SoftReference;

    invoke-virtual {v15}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 155
    .local v3, "context":Landroid/content/Context;
    if-eqz v3, :cond_1

    .line 156
    invoke-virtual/range {p0 .. p1}, Lorg/appcelerator/titanium/util/TiFileHelper;->isTitaniumResource(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 157
    const-string v15, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, "parts":[Ljava/lang/String;
    array-length v15, v9

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 159
    const-string v15, "TiFileHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Malformed titanium resource url, resource not loaded: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v15, 0x0

    .line 225
    .end local v9    # "parts":[Ljava/lang/String;
    :goto_0
    return-object v15

    .line 163
    .restart local v9    # "parts":[Ljava/lang/String;
    :cond_0
    const/4 v15, 0x0

    aget-object v13, v9, v15

    .line 164
    .local v13, "titanium":Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v12, v9, v15

    .line 165
    .local v12, "section":Ljava/lang/String;
    const/4 v15, 0x2

    aget-object v11, v9, v15

    .line 167
    .local v11, "resid":Ljava/lang/String;
    const-string v15, "ti:"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 168
    const-class v15, Lorg/appcelerator/titanium/util/TiFileHelper;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "/org/appcelerator/titanium/res/drawable/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .end local v9    # "parts":[Ljava/lang/String;
    .end local v11    # "resid":Ljava/lang/String;
    .end local v12    # "section":Ljava/lang/String;
    .end local v13    # "titanium":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object v15, v7

    .line 225
    goto :goto_0

    .line 169
    .restart local v9    # "parts":[Ljava/lang/String;
    .restart local v11    # "resid":Ljava/lang/String;
    .restart local v12    # "section":Ljava/lang/String;
    .restart local v13    # "titanium":Ljava/lang/String;
    :cond_2
    const-string v15, "Sys"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 170
    sget-object v15, Lorg/appcelerator/titanium/util/TiFileHelper;->systemIcons:Ljava/util/HashMap;

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 171
    .local v6, "id":Ljava/lang/Integer;
    if-eqz v6, :cond_3

    .line 172
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    goto :goto_1

    .line 174
    :cond_3
    const-string v15, "TiFileHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Drawable not found for system id: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 177
    .end local v6    # "id":Ljava/lang/Integer;
    :cond_4
    const-string v15, "TiFileHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown section identifier: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 179
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v11    # "resid":Ljava/lang/String;
    .end local v12    # "section":Ljava/lang/String;
    .end local v13    # "titanium":Ljava/lang/String;
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 180
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 181
    invoke-direct/range {p0 .. p0}, Lorg/appcelerator/titanium/util/TiFileHelper;->getRuntimeHandler()Landroid/os/Handler;

    move-result-object v15

    const/16 v16, 0x64

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingRuntimeMessage(Landroid/os/Message;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "is":Ljava/io/InputStream;
    check-cast v7, Ljava/io/InputStream;

    .restart local v7    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 183
    :cond_6
    invoke-direct/range {p0 .. p1}, Lorg/appcelerator/titanium/util/TiFileHelper;->handleNetworkURL(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    goto :goto_1

    .line 185
    :cond_7
    const-string v15, "file:///android_asset/Resources"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 186
    const-string v15, "file:///android_asset/"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    .line 187
    .local v8, "len":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 188
    const/4 v4, 0x0

    .line 190
    .local v4, "found":Z
    sget-object v15, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 191
    const/4 v4, 0x1

    .line 211
    :cond_8
    :goto_2
    if-eqz v4, :cond_1

    .line 212
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    goto/16 :goto_1

    .line 192
    :cond_9
    sget-object v15, Lorg/appcelerator/titanium/util/TiFileHelper;->notFoundResourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 193
    const/4 v15, 0x0

    const-string v16, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "base":Ljava/lang/String;
    sget-object v16, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    monitor-enter v16

    .line 196
    :try_start_0
    sget-object v15, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 197
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 198
    .local v10, "paths":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v15, v10

    if-ge v5, v15, :cond_a

    .line 199
    sget-object v15, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x2f

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v10, v5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 201
    :cond_a
    sget-object v15, Lorg/appcelerator/titanium/util/TiFileHelper;->resourcePathCache:Ljava/util/HashSet;

    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v15, Lorg/appcelerator/titanium/util/TiFileHelper;->foundResourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 203
    const/4 v4, 0x1

    .line 206
    .end local v5    # "i":I
    .end local v10    # "paths":[Ljava/lang/String;
    :cond_b
    if-nez v4, :cond_c

    .line 207
    sget-object v15, Lorg/appcelerator/titanium/util/TiFileHelper;->notFoundResourcePathCache:Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_c
    monitor-exit v16

    goto/16 :goto_2

    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 214
    .end local v2    # "base":Ljava/lang/String;
    .end local v4    # "found":Z
    .end local v8    # "len":I
    :cond_d
    const-string v15, "/sdcard/Ti.debug"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 215
    new-instance v7, Ljava/io/FileInputStream;

    .end local v7    # "is":Ljava/io/InputStream;
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v7    # "is":Ljava/io/InputStream;
    goto/16 :goto_1

    .line 216
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 217
    new-instance v14, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 218
    .local v14, "u":Ljava/net/URL;
    invoke-virtual {v14}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    .line 219
    goto/16 :goto_1

    .line 220
    .end local v14    # "u":Ljava/net/URL;
    :cond_f
    const-string v15, "Resources"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;->joinPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    goto/16 :goto_1
.end method

.method public wipeDirectoryTree(Ljava/io/File;)V
    .locals 7
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 581
    new-instance v1, Ljava/util/TreeSet;

    new-instance v4, Lorg/appcelerator/titanium/util/TiFileHelper$1;

    invoke-direct {v4, p0}, Lorg/appcelerator/titanium/util/TiFileHelper$1;-><init>(Lorg/appcelerator/titanium/util/TiFileHelper;)V

    invoke-direct {v1, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 587
    .local v1, "dirs":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v1}, Lorg/appcelerator/titanium/util/TiFileHelper;->wipeDirectoryTree(Ljava/io/File;Ljava/util/SortedSet;)V

    .line 589
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 590
    .local v0, "d":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 591
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 592
    .local v3, "fn":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 593
    .local v2, "f":Ljava/io/File;
    const-string v4, "TiFileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting Dir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 596
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "fn":Ljava/lang/String;
    :cond_0
    return-void
.end method
