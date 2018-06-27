.class public Lti/modules/titanium/database/TiResultSetProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "TiResultSetProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TiResultSet"


# instance fields
.field protected columnNames:Ljava/util/HashMap;
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

.field protected lastException:Ljava/lang/String;

.field protected rs:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .param p1, "rs"    # Landroid/database/Cursor;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollProxy;-><init>()V

    .line 36
    iput-object p1, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    .line 37
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "names":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lti/modules/titanium/database/TiResultSetProxy;->columnNames:Ljava/util/HashMap;

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 40
    iget-object v2, p0, Lti/modules/titanium/database/TiResultSetProxy;->columnNames:Ljava/util/HashMap;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;
    .param p2, "rs"    # Landroid/database/Cursor;

    .prologue
    .line 46
    invoke-direct {p0, p2}, Lti/modules/titanium/database/TiResultSetProxy;-><init>(Landroid/database/Cursor;)V

    .line 47
    return-void
.end method

.method private internalGetField(II)Ljava/lang/Object;
    .locals 8
    .param p1, "index"    # I
    .param p2, "type"    # I

    .prologue
    .line 98
    iget-object v5, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    if-nez v5, :cond_1

    .line 99
    const-string v5, "TiResultSet"

    const-string v6, "Attempted to get field value when no result set is available."

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v4, 0x0

    .line 164
    :cond_0
    :goto_0
    return-object v4

    .line 102
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-lt p1, v5, :cond_3

    const/4 v3, 0x1

    .line 103
    .local v3, "outOfBounds":Z
    :goto_1
    const/4 v4, 0x0

    .line 104
    .local v4, "result":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 107
    .local v2, "fromString":Z
    :try_start_0
    iget-object v5, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    instance-of v5, v5, Landroid/database/AbstractWindowedCursor;

    if-eqz v5, :cond_8

    .line 108
    iget-object v0, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    check-cast v0, Landroid/database/AbstractWindowedCursor;

    .line 110
    .local v0, "cursor":Landroid/database/AbstractWindowedCursor;
    invoke-virtual {v0, p1}, Landroid/database/AbstractWindowedCursor;->isFloat(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 111
    invoke-virtual {v0, p1}, Landroid/database/AbstractWindowedCursor;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 124
    .end local v0    # "cursor":Landroid/database/AbstractWindowedCursor;
    .end local v4    # "result":Ljava/lang/Object;
    :goto_2
    if-eqz v2, :cond_2

    .line 125
    iget-object v5, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 127
    :cond_2
    if-eqz v3, :cond_9

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_9

    .line 132
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested column number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not exist"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v5, "TiResultSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception getting value for column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    throw v1

    .line 102
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "fromString":Z
    .end local v3    # "outOfBounds":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 112
    .restart local v0    # "cursor":Landroid/database/AbstractWindowedCursor;
    .restart local v2    # "fromString":Z
    .restart local v3    # "outOfBounds":Z
    .restart local v4    # "result":Ljava/lang/Object;
    :cond_4
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/database/AbstractWindowedCursor;->isLong(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 113
    invoke-virtual {v0, p1}, Landroid/database/AbstractWindowedCursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, "result":Ljava/lang/Long;
    goto :goto_2

    .line 114
    .local v4, "result":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0, p1}, Landroid/database/AbstractWindowedCursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 115
    const/4 v4, 0x0

    goto :goto_2

    .line 116
    :cond_6
    invoke-virtual {v0, p1}, Landroid/database/AbstractWindowedCursor;->isBlob(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 117
    invoke-virtual {v0, p1}, Landroid/database/AbstractWindowedCursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([B)Lorg/appcelerator/titanium/TiBlob;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .local v4, "result":Lorg/appcelerator/titanium/TiBlob;
    goto :goto_2

    .line 119
    .local v4, "result":Ljava/lang/Object;
    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 122
    .end local v0    # "cursor":Landroid/database/AbstractWindowedCursor;
    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 142
    .end local v4    # "result":Ljava/lang/Object;
    :cond_9
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 144
    :pswitch_0
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_0

    .line 145
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 149
    .end local v4    # "result":Ljava/lang/String;
    :pswitch_1
    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_0

    instance-of v5, v4, Ljava/lang/Long;

    if-nez v5, :cond_0

    .line 150
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, "result":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 154
    .end local v4    # "result":Ljava/lang/Integer;
    :pswitch_2
    instance-of v5, v4, Ljava/lang/Float;

    if-nez v5, :cond_0

    .line 155
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toFloat(Ljava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .local v4, "result":Ljava/lang/Float;
    goto/16 :goto_0

    .line 159
    .end local v4    # "result":Ljava/lang/Float;
    :pswitch_3
    instance-of v5, v4, Ljava/lang/Double;

    if-nez v5, :cond_0

    .line 160
    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .local v4, "result":Ljava/lang/Double;
    goto/16 :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private internalGetField([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 74
    const/4 v0, -0x1

    .line 75
    .local v0, "index":I
    const/4 v1, -0x1

    .line 76
    .local v1, "type":I
    array-length v2, p1

    if-lt v2, v6, :cond_0

    .line 77
    aget-object v2, p1, v5

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 78
    aget-object v2, p1, v5

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    .line 84
    :cond_0
    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 85
    aget-object v2, p1, v6

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 86
    aget-object v2, p1, v6

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 92
    :cond_1
    invoke-direct {p0, v0, v1}, Lti/modules/titanium/database/TiResultSetProxy;->internalGetField(II)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 80
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected int column index as first parameter was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected int column index as first parameter was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected int field type as second parameter was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private internalGetFieldByName(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 201
    const/4 v3, 0x0

    .line 202
    .local v3, "result":Ljava/lang/Object;
    iget-object v4, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 204
    :try_start_0
    iget-object v4, p0, Lti/modules/titanium/database/TiResultSetProxy;->columnNames:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 205
    .local v2, "ndx":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 206
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lti/modules/titanium/database/TiResultSetProxy;->internalGetField(II)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 214
    .end local v2    # "ndx":Ljava/lang/Integer;
    .end local v3    # "result":Ljava/lang/Object;
    :cond_0
    return-object v3

    .line 207
    .restart local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/database/SQLException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Field name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found. msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "msg":Ljava/lang/String;
    const-string v4, "TiResultSet"

    invoke-static {v4, v1}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    throw v0
.end method

.method private internalGetFieldByName([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "name":Ljava/lang/String;
    const/4 v1, -0x1

    .line 181
    .local v1, "type":I
    array-length v2, p1

    if-lt v2, v5, :cond_0

    .line 182
    aget-object v2, p1, v6

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 183
    aget-object v0, p1, v6

    .end local v0    # "name":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 188
    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 189
    aget-object v2, p1, v5

    instance-of v2, v2, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 190
    aget-object v2, p1, v5

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    .line 196
    :cond_1
    invoke-direct {p0, v0, v1}, Lti/modules/titanium/database/TiResultSetProxy;->internalGetFieldByName(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 185
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected string column name as first parameter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected int field type as second parameter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string v0, "TiResultSet"

    const-string v1, "Closing database cursor"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    const-string v0, "TiResultSet"

    const-string v1, "Calling close on a closed cursor."

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public field([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lti/modules/titanium/database/TiResultSetProxy;->internalGetField([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fieldByName([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lti/modules/titanium/database/TiResultSetProxy;->internalGetFieldByName([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fieldName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 236
    invoke-virtual {p0, p1}, Lti/modules/titanium/database/TiResultSetProxy;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    const-string v0, "Ti.Database.ResultSet"

    return-object v0
.end method

.method public getField([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lti/modules/titanium/database/TiResultSetProxy;->internalGetField([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFieldByName([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lti/modules/titanium/database/TiResultSetProxy;->internalGetFieldByName([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFieldCount()I
    .locals 3

    .prologue
    .line 220
    iget-object v1, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 222
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "TiResultSet"

    const-string v2, "No fields exist"

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    throw v0

    .line 229
    .end local v0    # "e":Landroid/database/SQLException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFieldName(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 242
    iget-object v1, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 244
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 250
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/database/SQLException;
    const-string v1, "TiResultSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No column at index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    throw v0

    .line 250
    .end local v0    # "e":Landroid/database/SQLException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 260
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidRow()Z
    .locals 2

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "valid":Z
    iget-object v1, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    const/4 v0, 0x1

    .line 270
    :cond_0
    return v0
.end method

.method public next()Z
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lti/modules/titanium/database/TiResultSetProxy;->isValidRow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lti/modules/titanium/database/TiResultSetProxy;->rs:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 281
    :goto_0
    return v0

    .line 279
    :cond_0
    const-string v0, "TiResultSet"

    const-string v1, "Ignoring next, current row is invalid."

    invoke-static {v0, v1}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    goto :goto_0
.end method
