.class public Lorg/appcelerator/kroll/util/KrollAssetHelper;
.super Ljava/lang/Object;
.source "KrollAssetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TiAssetHelper"

.field private static assetCrypt:Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;

.field private static cacheDir:Ljava/lang/String;

.field private static manager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/AssetManager;",
            ">;"
        }
    .end annotation
.end field

.field private static packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lorg/appcelerator/kroll/util/KrollAssetHelper;->cacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lorg/appcelerator/kroll/util/KrollAssetHelper;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/appcelerator/kroll/util/KrollAssetHelper;->manager:Ljava/lang/ref/WeakReference;

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/kroll/util/KrollAssetHelper;->packageName:Ljava/lang/String;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/kroll/util/KrollAssetHelper;->cacheDir:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static readAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 46
    const-string v9, "Resources/"

    const-string v10, ""

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "resourcePath":Ljava/lang/String;
    sget-object v9, Lorg/appcelerator/kroll/util/KrollAssetHelper;->assetCrypt:Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;

    if-eqz v9, :cond_0

    .line 49
    sget-object v9, Lorg/appcelerator/kroll/util/KrollAssetHelper;->assetCrypt:Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;

    invoke-interface {v9, v7}, Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;->readAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "asset":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 79
    .end local v0    # "asset":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 56
    :cond_0
    :try_start_0
    sget-object v9, Lorg/appcelerator/kroll/util/KrollAssetHelper;->manager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    .line 57
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    if-nez v1, :cond_1

    .line 58
    const-string v9, "TiAssetHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AssetManager is null, can\'t read asset: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    .line 59
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 63
    .local v5, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v2, v9, [B

    .line 65
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 67
    .local v3, "count":I
    :cond_2
    :goto_1
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_3

    .line 68
    if-eqz v6, :cond_2

    .line 69
    const/4 v9, 0x0

    invoke-virtual {v6, v2, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 75
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v5    # "in":Ljava/io/InputStream;
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v4

    .line 76
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "TiAssetHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while reading asset \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .line 79
    goto :goto_0

    .line 73
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v2    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v5    # "in":Ljava/io/InputStream;
    .restart local v6    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :try_start_1
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 86
    .local v3, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 88
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 90
    .local v1, "count":I
    :cond_0
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 91
    if-eqz v4, :cond_0

    .line 92
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 98
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v5, "TiAssetHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v5, 0x0

    :goto_2
    return-object v5

    .line 96
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    goto :goto_2

    .line 101
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 102
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "TiAssetHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while reading file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static setAssetCrypt(Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;)V
    .locals 0
    .param p0, "assetCrypt"    # Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;

    .prologue
    .line 34
    sput-object p0, Lorg/appcelerator/kroll/util/KrollAssetHelper;->assetCrypt:Lorg/appcelerator/kroll/util/KrollAssetHelper$AssetCrypt;

    .line 35
    return-void
.end method
