.class public Lorg/appcelerator/titanium/io/TiResourceFile;
.super Lorg/appcelerator/titanium/io/TiBaseFile;
.source "TiResourceFile.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiResourceFile"


# instance fields
.field private final path:Ljava/lang/String;

.field private typeFetched:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/appcelerator/titanium/io/TiBaseFile;-><init>(I)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFetched:Z

    .line 38
    iput-object p1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private fetchType()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 262
    const/4 v1, 0x0

    .line 264
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 265
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeDir:Z

    .line 266
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    if-eqz v1, :cond_0

    .line 274
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 280
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFetched:Z

    .line 281
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeDir:Z

    .line 270
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFile:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    if-eqz v1, :cond_0

    .line 274
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 275
    :catch_1
    move-exception v2

    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 274
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 277
    :cond_1
    :goto_1
    throw v2

    .line 275
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public exists()Z
    .locals 5

    .prologue
    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 151
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 152
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 162
    :goto_0
    if-eqz v1, :cond_0

    .line 164
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 171
    :cond_0
    :goto_1
    return v2

    .line 152
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getDirectoryListing()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 159
    const/4 v2, 0x1

    .line 162
    :cond_2
    if-eqz v1, :cond_0

    .line 164
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 165
    :catch_1
    move-exception v3

    goto :goto_1

    .line 162
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 164
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 167
    :cond_3
    :goto_2
    throw v3

    .line 165
    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method public extension()Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDirectoryListing()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v3, "listing":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Resources"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v6}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, "lpath":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 240
    const/4 v6, 0x0

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 242
    :cond_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v6

    invoke-virtual {v6}, Lorg/appcelerator/titanium/TiApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "names":[Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 244
    array-length v2, v5

    .line 245
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 246
    aget-object v6, v5, v1

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v4    # "lpath":Ljava/lang/String;
    .end local v5    # "names":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "TiResourceFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error while getting a directory listing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    return-object v3
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 74
    .local v1, "in":Ljava/io/InputStream;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 76
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Resources"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiFileHelper2;->joinSegments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "p":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 80
    .end local v2    # "p":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getNativeFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->toURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFetched:Z

    if-eqz v0, :cond_0

    .line 45
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeDir:Z

    .line 49
    :goto_0
    return v0

    .line 48
    :cond_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->fetchType()V

    .line 49
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeDir:Z

    goto :goto_0
.end method

.method public isFile()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFetched:Z

    if-eqz v0, :cond_0

    .line 56
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFile:Z

    .line 60
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-direct {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->fetchType()V

    .line 60
    iget-boolean v0, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->typeFile:Z

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 178
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public nativePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->toURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(IZ)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "binary"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_2

    .line 102
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 103
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 104
    if-eqz p2, :cond_0

    .line 105
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->instream:Ljava/io/InputStream;

    .line 109
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->opened:Z

    .line 116
    return-void

    .line 107
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->inreader:Ljava/io/BufferedReader;

    goto :goto_0

    .line 111
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    .end local v0    # "in":Ljava/io/InputStream;
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Resource file may not be written."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()Lorg/appcelerator/titanium/TiBlob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {p0}, Lorg/appcelerator/titanium/TiBlob;->blobFromFile(Lorg/appcelerator/titanium/io/TiBaseFile;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, "result":Ljava/lang/String;
    iget-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->opened:Z

    if-nez v2, :cond_0

    .line 130
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Must open before calling readLine"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_0
    iget-boolean v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->binary:Z

    if-eqz v2, :cond_1

    .line 133
    new-instance v2, Ljava/io/IOException;

    const-string v3, "File opened in binary mode, readLine not available."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->inreader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 142
    :goto_0
    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "TiResourceFile"

    const-string v3, "Error reading a line from the file: "

    invoke-static {v2, v3, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resolve()Lorg/appcelerator/titanium/io/TiBaseFile;
    .locals 0

    .prologue
    .line 66
    return-object p0
.end method

.method public size()J
    .locals 8

    .prologue
    .line 213
    const-wide/16 v2, 0x0

    .line 214
    .local v2, "length":J
    const/4 v1, 0x0

    .line 216
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 217
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    int-to-long v2, v4

    .line 221
    if-eqz v1, :cond_0

    .line 223
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    :cond_0
    :goto_0
    return-wide v2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "TiResourceFile"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v0, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 219
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "TiResourceFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while trying to determine file size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    if-eqz v1, :cond_0

    .line 223
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 224
    :catch_2
    move-exception v0

    .line 225
    const-string v4, "TiResourceFile"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DEBUG_MODE"

    invoke-static {v4, v5, v0, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 223
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 226
    :cond_1
    :goto_1
    throw v4

    .line 224
    :catch_3
    move-exception v0

    .line 225
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "TiResourceFile"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v0, v7}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public spaceAvailable()D
    .locals 2

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/appcelerator/titanium/io/TiResourceFile;->toURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/Resources/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/appcelerator/titanium/io/TiResourceFile;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
