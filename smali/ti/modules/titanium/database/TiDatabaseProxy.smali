.class public Lti/modules/titanium/database/TiDatabaseProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TiDatabaseProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiDB"


# instance fields
.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field protected name:Ljava/lang/String;

.field readOnly:Z

.field statementLogging:Z


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/database/TiDatabaseProxy;->name:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lti/modules/titanium/database/TiDatabaseProxy;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/database/TiDatabaseProxy;->statementLogging:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/database/TiDatabaseProxy;->readOnly:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 36
    iput-object p1, p0, Lti/modules/titanium/database/TiDatabaseProxy;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lti/modules/titanium/database/TiDatabaseProxy;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 38
    iput-boolean v0, p0, Lti/modules/titanium/database/TiDatabaseProxy;->statementLogging:Z

    .line 39
    iput-boolean v0, p0, Lti/modules/titanium/database/TiDatabaseProxy;->readOnly:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 60
    invoke-direct {p0, p2}, Lti/modules/titanium/database/TiDatabaseProxy;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 44
    invoke-direct {p0, p2, p3}, Lti/modules/titanium/database/TiDatabaseProxy;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lti/modules/titanium/database/TiDatabaseProxy;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "TiDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing database: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/database/TiDatabaseProxy;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lti/modules/titanium/database/TiDatabaseProxy;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v0, "TiDB"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database is not open, ignoring close for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/database/TiDatabaseProxy;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lti/modules/titanium/database/TiResultSetProxy;
    .locals 22
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 79
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/16 v19, 0x0

    aget-object v19, p2, v19

    move-object/from16 v0, v19

    instance-of v0, v0, [Ljava/lang/Object;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 80
    const/16 v19, 0x0

    aget-object v19, p2, v19

    check-cast v19, [Ljava/lang/Object;

    move-object/from16 v18, v19

    check-cast v18, [Ljava/lang/Object;

    .line 85
    .local v18, "sqlArgs":[Ljava/lang/Object;
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lti/modules/titanium/database/TiDatabaseProxy;->statementLogging:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 86
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string v19, "Executing SQL: "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n  Args: [ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const/4 v11, 0x0

    .line 90
    .local v11, "needsComma":Z
    move-object/from16 v3, v18

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v15, v3, v7

    .line 91
    .local v15, "s":Ljava/lang/Object;
    if-eqz v11, :cond_1

    .line 92
    const-string v19, ", \""

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :goto_2
    invoke-static {v15}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 82
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "needsComma":Z
    .end local v15    # "s":Ljava/lang/Object;
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "sqlArgs":[Ljava/lang/Object;
    :cond_0
    move-object/from16 v18, p2

    .restart local v18    # "sqlArgs":[Ljava/lang/Object;
    goto :goto_0

    .line 94
    .restart local v3    # "arr$":[Ljava/lang/Object;
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "needsComma":Z
    .restart local v15    # "s":Ljava/lang/Object;
    .restart local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string v19, " \""

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/4 v11, 0x1

    goto :goto_2

    .line 99
    .end local v15    # "s":Ljava/lang/Object;
    :cond_2
    const-string v19, " ]"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v19, "TiDB"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "DEBUG_MODE"

    invoke-static/range {v19 .. v21}, Lorg/appcelerator/kroll/common/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "needsComma":Z
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v13, 0x0

    .line 104
    .local v13, "rs":Lti/modules/titanium/database/TiResultSetProxy;
    const/4 v4, 0x0

    .line 106
    .local v4, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 111
    .local v8, "lcSql":Ljava/lang/String;
    const-string v19, "select"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, "pragma"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    const-string v19, "="

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 112
    :cond_4
    const/16 v17, 0x0

    .line 113
    .local v17, "selectArgs":[Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 114
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 115
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_5

    .line 116
    aget-object v19, v18, v6

    invoke-static/range {v19 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v6

    .line 115
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 119
    .end local v6    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/database/TiDatabaseProxy;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 120
    if-eqz v4, :cond_7

    .line 125
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v19

    if-lez v19, :cond_6

    .line 126
    new-instance v14, Lti/modules/titanium/database/TiResultSetProxy;

    invoke-direct {v14, v4}, Lti/modules/titanium/database/TiResultSetProxy;-><init>(Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v13    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    .local v14, "rs":Lti/modules/titanium/database/TiResultSetProxy;
    :try_start_1
    invoke-virtual {v14}, Lti/modules/titanium/database/TiResultSetProxy;->isValidRow()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 128
    invoke-virtual {v14}, Lti/modules/titanium/database/TiResultSetProxy;->next()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v13, v14

    .line 167
    .end local v14    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    .end local v17    # "selectArgs":[Ljava/lang/String;
    .restart local v13    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    :goto_4
    return-object v13

    .line 131
    .restart local v17    # "selectArgs":[Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 132
    const/4 v4, 0x0

    .line 133
    const/4 v13, 0x0

    goto :goto_4

    .line 138
    :cond_7
    new-instance v14, Lti/modules/titanium/database/TiResultSetProxy;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lti/modules/titanium/database/TiResultSetProxy;-><init>(Landroid/database/Cursor;)V

    .end local v13    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    .restart local v14    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    move-object v13, v14

    .end local v14    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    .restart local v13    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    goto :goto_4

    .line 141
    .end local v17    # "selectArgs":[Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    .line 142
    .local v12, "newArgs":[Ljava/lang/Object;
    if-eqz v18, :cond_b

    .line 143
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v12, v0, [Ljava/lang/Object;

    .line 144
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_b

    .line 145
    aget-object v19, v18, v6

    move-object/from16 v0, v19

    instance-of v0, v0, Lorg/appcelerator/titanium/TiBlob;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 146
    aget-object v19, v18, v6

    check-cast v19, Lorg/appcelerator/titanium/TiBlob;

    invoke-virtual/range {v19 .. v19}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v19

    aput-object v19, v12, v6

    .line 144
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 148
    :cond_9
    aget-object v19, v18, v6

    invoke-static/range {v19 .. v19}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v12, v6
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    .line 154
    .end local v6    # "i":I
    .end local v8    # "lcSql":Ljava/lang/String;
    .end local v12    # "newArgs":[Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 155
    .local v5, "e":Landroid/database/SQLException;
    :goto_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error executing sql: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, "msg":Ljava/lang/String;
    const-string v19, "TiDB"

    move-object/from16 v0, v19

    invoke-static {v0, v10, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    if-eqz v4, :cond_a

    .line 159
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 164
    :cond_a
    :goto_8
    throw v5

    .line 152
    .end local v5    # "e":Landroid/database/SQLException;
    .end local v10    # "msg":Ljava/lang/String;
    .restart local v8    # "lcSql":Ljava/lang/String;
    .restart local v12    # "newArgs":[Ljava/lang/Object;
    :cond_b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/database/TiDatabaseProxy;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 160
    .end local v8    # "lcSql":Ljava/lang/String;
    .end local v12    # "newArgs":[Ljava/lang/Object;
    .restart local v5    # "e":Landroid/database/SQLException;
    .restart local v10    # "msg":Ljava/lang/String;
    :catch_1
    move-exception v19

    goto :goto_8

    .line 154
    .end local v5    # "e":Landroid/database/SQLException;
    .end local v10    # "msg":Ljava/lang/String;
    .end local v13    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    .restart local v8    # "lcSql":Ljava/lang/String;
    .restart local v14    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    .restart local v17    # "selectArgs":[Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object v13, v14

    .end local v14    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    .restart local v13    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    goto :goto_7

    .end local v13    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    .restart local v14    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    :cond_c
    move-object v13, v14

    .end local v14    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    .restart local v13    # "rs":Lti/modules/titanium/database/TiResultSetProxy;
    goto/16 :goto_4
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string v0, "Ti.Database.DB"

    return-object v0
.end method

.method public getLastInsertRowId()I
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lti/modules/titanium/database/TiDatabaseProxy;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select last_insert_rowid()"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lti/modules/titanium/database/TiDatabaseProxy;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRowsAffected()I
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lti/modules/titanium/database/TiDatabaseProxy;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "select changes()"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public remove()V
    .locals 4

    .prologue
    .line 187
    iget-boolean v1, p0, Lti/modules/titanium/database/TiDatabaseProxy;->readOnly:Z

    if-eqz v1, :cond_0

    .line 188
    const-string v1, "TiDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lti/modules/titanium/database/TiDatabaseProxy;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is a read-only database, cannot remove"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/database/TiDatabaseProxy;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    const-string v1, "TiDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to remove open database. Closing then removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/database/TiDatabaseProxy;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lti/modules/titanium/database/TiDatabaseProxy;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 196
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    .line 197
    .local v0, "ctx":Landroid/content/Context;
    if-eqz v0, :cond_2

    .line 198
    iget-object v1, p0, Lti/modules/titanium/database/TiDatabaseProxy;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto :goto_0

    .line 200
    :cond_2
    const-string v1, "TiDB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to remove database, context has been reclaimed by GC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/database/TiDatabaseProxy;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
