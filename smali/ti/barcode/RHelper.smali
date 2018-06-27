.class public Lti/barcode/RHelper;
.super Ljava/lang/Object;
.source "RHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 52
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "color."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getApplicationResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 55
    :goto_0
    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;->printStackTrace()V

    .line 55
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDrawable(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 43
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getApplicationResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 46
    :goto_0
    return v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;->printStackTrace()V

    .line 46
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 34
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getApplicationResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 37
    :goto_0
    return v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;->printStackTrace()V

    .line 37
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLayout(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layout."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getApplicationResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 28
    :goto_0
    return v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;->printStackTrace()V

    .line 28
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRaw(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getApplicationResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 64
    :goto_0
    return v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;->printStackTrace()V

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 16
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getApplicationResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 19
    :goto_0
    return v1

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;->printStackTrace()V

    .line 19
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getXML(Ljava/lang/String;)I
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 70
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiRHelper;->getApplicationResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;->printStackTrace()V

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method
