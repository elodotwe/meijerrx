.class public Lti/modules/titanium/database/DatabaseModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "DatabaseModule.java"


# static fields
.field public static final FIELD_TYPE_DOUBLE:I = 0x3

.field public static final FIELD_TYPE_FLOAT:I = 0x2

.field public static final FIELD_TYPE_INT:I = 0x1

.field public static final FIELD_TYPE_STRING:I = 0x0

.field public static final FIELD_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TiDatabase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 51
    invoke-direct {p0}, Lti/modules/titanium/database/DatabaseModule;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const-string v0, "Ti.Database"

    return-object v0
.end method

.method public install(Lorg/appcelerator/kroll/KrollInvocation;Ljava/lang/String;Ljava/lang/String;)Lti/modules/titanium/database/TiDatabaseProxy;
    .locals 24
    .param p1, "invocation"    # Lorg/appcelerator/kroll/KrollInvocation;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v6

    .line 91
    .local v6, "ctx":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v14, :cond_1

    aget-object v8, v3, v11

    .line 93
    .local v8, "dbname":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lti/modules/titanium/database/DatabaseModule;->open(Ljava/lang/Object;)Lti/modules/titanium/database/TiDatabaseProxy;

    move-result-object v21

    .line 141
    .end local v8    # "dbname":Ljava/lang/String;
    :goto_1
    return-object v21

    .line 91
    .restart local v8    # "dbname":Ljava/lang/String;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 99
    .end local v8    # "dbname":Ljava/lang/String;
    :cond_1
    const-string v21, "appdata://"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 100
    const/16 v21, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 101
    .local v18, "path":Ljava/lang/String;
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_2

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x2f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 102
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 104
    :cond_2
    new-instance v10, Ljava/io/File;

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lorg/appcelerator/titanium/io/TiFileFactory;->getDataDirectory(Z)Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 108
    .end local v10    # "f":Ljava/io/File;
    .end local v18    # "path":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 110
    .local v7, "dbPath":Ljava/io/File;
    const-string v21, "TiDatabase"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "db path is = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "DEBUG_MODE"

    invoke-static/range {v21 .. v23}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v21, "TiDatabase"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "db url is = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "DEBUG_MODE"

    invoke-static/range {v21 .. v23}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual/range {p1 .. p1}, Lorg/appcelerator/kroll/KrollInvocation;->getSourceUrl()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/appcelerator/titanium/util/TiUrl;->createProxyUrl(Ljava/lang/String;)Lorg/appcelerator/titanium/util/TiUrl;

    move-result-object v20

    .line 114
    .local v20, "tiUrl":Lorg/appcelerator/titanium/util/TiUrl;
    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiUrl;->baseUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/appcelerator/titanium/util/TiUrl;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 116
    .restart local v18    # "path":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/io/TiFileFactory;->createTitaniumFile(Ljava/lang/String;Z)Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v19

    .line 118
    .local v19, "srcDb":Lorg/appcelerator/titanium/io/TiBaseFile;
    const-string v21, "TiDatabase"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "new url is = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "DEBUG_MODE"

    invoke-static/range {v21 .. v23}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual/range {v19 .. v19}, Lorg/appcelerator/titanium/io/TiBaseFile;->isFile()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 121
    const/4 v12, 0x0

    .line 122
    .local v12, "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 124
    .local v16, "os":Ljava/io/OutputStream;
    const/16 v21, 0x1fa0

    move/from16 v0, v21

    new-array v4, v0, [B
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .local v4, "buf":[B
    const/4 v5, 0x0

    .line 128
    .local v5, "count":I
    :try_start_1
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v19 .. v19}, Lorg/appcelerator/titanium/io/TiBaseFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .end local v12    # "is":Ljava/io/InputStream;
    .local v13, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v17, Ljava/io/BufferedOutputStream;

    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 131
    .end local v16    # "os":Ljava/io/OutputStream;
    .local v17, "os":Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v5, v0, :cond_4

    .line 132
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 137
    :catchall_0
    move-exception v21

    move-object/from16 v16, v17

    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v16    # "os":Ljava/io/OutputStream;
    move-object v12, v13

    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 138
    :goto_4
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    throw v21
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 143
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "buf":[B
    .end local v5    # "count":I
    .end local v6    # "ctx":Landroid/content/Context;
    .end local v7    # "dbPath":Ljava/io/File;
    .end local v11    # "i$":I
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v14    # "len$":I
    .end local v16    # "os":Ljava/io/OutputStream;
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "srcDb":Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v20    # "tiUrl":Lorg/appcelerator/titanium/util/TiUrl;
    :catch_0
    move-exception v9

    .line 144
    .local v9, "e":Landroid/database/SQLException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error installing database: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " msg="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 145
    .local v15, "msg":Ljava/lang/String;
    const-string v21, "TiDatabase"

    move-object/from16 v0, v21

    invoke-static {v0, v15, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    throw v9

    .line 137
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v15    # "msg":Ljava/lang/String;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v4    # "buf":[B
    .restart local v5    # "count":I
    .restart local v6    # "ctx":Landroid/content/Context;
    .restart local v7    # "dbPath":Ljava/io/File;
    .restart local v11    # "i$":I
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "len$":I
    .restart local v17    # "os":Ljava/io/OutputStream;
    .restart local v18    # "path":Ljava/lang/String;
    .restart local v19    # "srcDb":Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v20    # "tiUrl":Lorg/appcelerator/titanium/util/TiUrl;
    :cond_4
    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 138
    :goto_6
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 141
    .end local v4    # "buf":[B
    .end local v5    # "count":I
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v17    # "os":Ljava/io/OutputStream;
    :cond_5
    :goto_7
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lti/modules/titanium/database/DatabaseModule;->open(Ljava/lang/Object;)Lti/modules/titanium/database/TiDatabaseProxy;
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    move-result-object v21

    goto/16 :goto_1

    .line 148
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "ctx":Landroid/content/Context;
    .end local v7    # "dbPath":Ljava/io/File;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "srcDb":Lorg/appcelerator/titanium/io/TiBaseFile;
    .end local v20    # "tiUrl":Lorg/appcelerator/titanium/util/TiUrl;
    :catch_1
    move-exception v9

    .line 149
    .local v9, "e":Ljava/io/IOException;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error installing database: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " msg="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 150
    .restart local v15    # "msg":Ljava/lang/String;
    const-string v21, "TiDatabase"

    move-object/from16 v0, v21

    invoke-static {v0, v15, v9}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    throw v9

    .line 137
    .end local v9    # "e":Ljava/io/IOException;
    .end local v15    # "msg":Ljava/lang/String;
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v4    # "buf":[B
    .restart local v5    # "count":I
    .restart local v6    # "ctx":Landroid/content/Context;
    .restart local v7    # "dbPath":Ljava/io/File;
    .restart local v11    # "i$":I
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v14    # "len$":I
    .restart local v17    # "os":Ljava/io/OutputStream;
    .restart local v18    # "path":Ljava/lang/String;
    .restart local v19    # "srcDb":Lorg/appcelerator/titanium/io/TiBaseFile;
    .restart local v20    # "tiUrl":Lorg/appcelerator/titanium/util/TiUrl;
    :catch_2
    move-exception v21

    goto :goto_6

    .line 138
    :catch_3
    move-exception v21

    goto :goto_7

    .line 137
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v16    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v22

    goto :goto_4

    .line 138
    :catch_5
    move-exception v22

    goto :goto_5

    .line 137
    :catchall_1
    move-exception v21

    goto :goto_3

    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v21

    move-object v12, v13

    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public open(Ljava/lang/Object;)Lti/modules/titanium/database/TiDatabaseProxy;
    .locals 12
    .param p1, "file"    # Ljava/lang/Object;

    .prologue
    .line 57
    const/4 v3, 0x0

    .line 60
    .local v3, "dbp":Lti/modules/titanium/database/TiDatabaseProxy;
    :try_start_0
    instance-of v9, p1, Lorg/appcelerator/titanium/TiFileProxy;

    if-eqz v9, :cond_0

    .line 62
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/TiFileProxy;

    move-object v8, v0

    .line 63
    .local v8, "tiFile":Lorg/appcelerator/titanium/TiFileProxy;
    invoke-virtual {v8}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v9

    invoke-virtual {v9}, Lorg/appcelerator/titanium/io/TiBaseFile;->getNativeFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "absolutePath":Ljava/lang/String;
    const-string v9, "TiDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Opening database from filesystem: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v9, 0x0

    const/16 v10, 0x11

    invoke-static {v1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 67
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Lti/modules/titanium/database/TiDatabaseProxy;

    invoke-direct {v4, v2}, Lti/modules/titanium/database/TiDatabaseProxy;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .end local v3    # "dbp":Lti/modules/titanium/database/TiDatabaseProxy;
    .local v4, "dbp":Lti/modules/titanium/database/TiDatabaseProxy;
    move-object v3, v4

    .line 74
    .end local v1    # "absolutePath":Ljava/lang/String;
    .end local v4    # "dbp":Lti/modules/titanium/database/TiDatabaseProxy;
    .end local v8    # "tiFile":Lorg/appcelerator/titanium/TiFileProxy;
    .restart local v3    # "dbp":Lti/modules/titanium/database/TiDatabaseProxy;
    :goto_0
    const-string v9, "TiDatabase"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Opened database: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lti/modules/titanium/database/TiDatabaseProxy;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DEBUG_MODE"

    invoke-static {v9, v10, v11}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v3

    .line 69
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "name":Ljava/lang/String;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v10, v11}, Lorg/appcelerator/titanium/TiApplication;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 71
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Lti/modules/titanium/database/TiDatabaseProxy;

    invoke-direct {v4, v7, v2}, Lti/modules/titanium/database/TiDatabaseProxy;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "dbp":Lti/modules/titanium/database/TiDatabaseProxy;
    .restart local v4    # "dbp":Lti/modules/titanium/database/TiDatabaseProxy;
    move-object v3, v4

    .end local v4    # "dbp":Lti/modules/titanium/database/TiDatabaseProxy;
    .restart local v3    # "dbp":Lti/modules/titanium/database/TiDatabaseProxy;
    goto :goto_0

    .line 76
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v7    # "name":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 77
    .local v5, "e":Landroid/database/SQLException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error opening database: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lti/modules/titanium/database/TiDatabaseProxy;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " msg="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "msg":Ljava/lang/String;
    const-string v9, "TiDatabase"

    invoke-static {v9, v6, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    throw v5
.end method
