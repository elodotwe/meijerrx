.class public Lorg/appcelerator/kroll/KrollDict;
.super Ljava/util/HashMap;
.source "KrollDict.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "KrollDict"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 40
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 42
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 43
    .local v3, "value":Ljava/lang/Object;
    invoke-static {v3}, Lorg/appcelerator/kroll/KrollDict;->fromJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, "json":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    .end local v1    # "json":Ljava/lang/Object;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static fromJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 50
    :try_start_0
    instance-of v5, p0, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 51
    new-instance v4, Lorg/appcelerator/kroll/KrollDict;

    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    move-object v5, v0

    invoke-direct {v4, v5}, Lorg/appcelerator/kroll/KrollDict;-><init>(Lorg/json/JSONObject;)V

    .line 69
    :cond_0
    :goto_0
    return-object v4

    .line 53
    :cond_1
    instance-of v5, p0, Lorg/json/JSONArray;

    if-eqz v5, :cond_2

    .line 54
    move-object v0, p0

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    .line 55
    .local v1, "array":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v4, v5, [Ljava/lang/Object;

    .line 56
    .local v4, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 57
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/appcelerator/kroll/KrollDict;->fromJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "values":[Ljava/lang/Object;
    :cond_2
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v5, :cond_3

    .line 62
    const/4 v4, 0x0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e":Lorg/json/JSONException;
    const-string v5, "KrollDict"

    const-string v6, "Error parsing JSON"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3
    move-object v4, p0

    .line 69
    goto :goto_0
.end method


# virtual methods
.method public containsKeyAndNotNull(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsKeyStartingWith(Ljava/lang/String;)Z
    .locals 3
    .param p1, "keyStartsWith"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 104
    invoke-virtual {p0}, Lorg/appcelerator/kroll/KrollDict;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const/4 v2, 0x1

    .line 110
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lorg/appcelerator/kroll/KrollDict;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Lorg/appcelerator/kroll/KrollDict;

    .line 166
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 163
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 164
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    check-cast v0, Ljava/util/HashMap;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-direct {v1, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    goto :goto_0

    .line 166
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 118
    move v0, p2

    .line 120
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 123
    :cond_0
    return v0
.end method

.method public optInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 142
    move-object v0, p2

    .line 144
    .local v0, "result":Ljava/lang/Integer;
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 147
    :cond_0
    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defalt"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 134
    .end local p2    # "defalt":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public putCodeAndMessage(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v1, "success"

    new-instance v2, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "code"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    if-eqz p2, :cond_0

    .line 94
    const-string v0, "error"

    invoke-virtual {p0, v0, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    return-void

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
