.class public Lti/modules/titanium/utils/UtilsModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "UtilsModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UtilsModule"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 51
    invoke-direct {p0}, Lti/modules/titanium/utils/UtilsModule;-><init>()V

    .line 52
    return-void
.end method

.method private convertToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 40
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Ljava/lang/String;

    .line 43
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 42
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v0, :cond_1

    .line 43
    check-cast p1, Lorg/appcelerator/titanium/TiBlob;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 45
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid type for argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public arrayTest([F[J[I[Ljava/lang/String;)Z
    .locals 1
    .param p1, "a"    # [F
    .param p2, "b"    # [J
    .param p3, "c"    # [I
    .param p4, "d"    # [Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public base64decode(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lti/modules/titanium/utils/UtilsModule;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/TiBlob;->blobFromData([B)Lorg/appcelerator/titanium/TiBlob;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "UtilsModule"

    const-string v3, "UTF-8 is not a supported encoding type"

    invoke-static {v2, v3}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public base64encode(Ljava/lang/Object;)Lorg/appcelerator/titanium/TiBlob;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 57
    instance-of v3, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v3, :cond_0

    .line 58
    check-cast p1, Lorg/appcelerator/titanium/TiBlob;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->toBase64()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromString(Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;

    move-result-object v3

    .line 75
    :goto_0
    return-object v3

    .line 59
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v3, p1, Lorg/appcelerator/titanium/TiFileProxy;

    if-eqz v3, :cond_1

    .line 61
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/TiFileProxy;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiFileProxy;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    move-object v0, p1

    check-cast v0, Lorg/appcelerator/titanium/TiFileProxy;

    move-object v3, v0

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiFileProxy;->getBaseFile()Lorg/appcelerator/titanium/io/TiBaseFile;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/io/TiBaseFile;->nativePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiMimeTypeHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromStreamBase64(Ljava/io/InputStream;Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "UtilsModule"

    const-string v4, "Problem reading file"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    invoke-direct {p0, p1}, Lti/modules/titanium/utils/UtilsModule;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 70
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v3}, Lorg/appcelerator/titanium/TiBlob;->blobFromString(Ljava/lang/String;)Lorg/appcelerator/titanium/TiBlob;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 71
    :catch_1
    move-exception v2

    .line 72
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "UtilsModule"

    const-string v4, "UTF-8 is not a supported encoding type"

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "Ti.Utils"

    return-object v0
.end method

.method public md5HexDigest(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 95
    instance-of v1, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v1, :cond_0

    .line 96
    check-cast p1, Lorg/appcelerator/titanium/TiBlob;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/digest/DigestUtils;->md5Hex([B)Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    .line 98
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/utils/UtilsModule;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 100
    invoke-static {v0}, Lorg/apache/commons/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sha1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 108
    instance-of v1, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v1, :cond_0

    .line 109
    check-cast p1, Lorg/appcelerator/titanium/TiBlob;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex([B)Ljava/lang/String;

    move-result-object v1

    .line 115
    :goto_0
    return-object v1

    .line 111
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/utils/UtilsModule;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 113
    invoke-static {v0}, Lorg/apache/commons/codec/digest/DigestUtils;->shaHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 115
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sha256(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "b":[B
    :try_start_0
    instance-of v7, p1, Lorg/appcelerator/titanium/TiBlob;

    if-eqz v7, :cond_0

    .line 132
    check-cast p1, Lorg/appcelerator/titanium/TiBlob;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/appcelerator/titanium/TiBlob;->getBytes()[B

    move-result-object v1

    .line 137
    :goto_0
    const-string v7, "SHA-256"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 138
    .local v0, "algorithm":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 139
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 140
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 141
    .local v5, "messageDigest":[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v6, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v5

    if-ge v4, v7, :cond_1

    .line 143
    aget-byte v7, v5, v4

    and-int/lit16 v7, v7, 0xff

    add-int/lit16 v7, v7, 0x100

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 134
    .end local v0    # "algorithm":Ljava/security/MessageDigest;
    .end local v4    # "i":I
    .end local v5    # "messageDigest":[B
    .end local v6    # "result":Ljava/lang/StringBuilder;
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-direct {p0, p1}, Lti/modules/titanium/utils/UtilsModule;->convertToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    .line 145
    .end local v2    # "data":Ljava/lang/String;
    .end local p1    # "obj":Ljava/lang/Object;
    .restart local v0    # "algorithm":Ljava/security/MessageDigest;
    .restart local v4    # "i":I
    .restart local v5    # "messageDigest":[B
    .restart local v6    # "result":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 149
    .end local v0    # "algorithm":Ljava/security/MessageDigest;
    .end local v4    # "i":I
    .end local v5    # "messageDigest":[B
    .end local v6    # "result":Ljava/lang/StringBuilder;
    :goto_2
    return-object v7

    .line 146
    :catch_0
    move-exception v3

    .line 147
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v7, "UtilsModule"

    const-string v8, "SHA256 is not a supported algorithm"

    invoke-static {v7, v8}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public transcodeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "orig"    # Ljava/lang/String;
    .param p2, "inEncoding"    # Ljava/lang/String;
    .param p3, "outEncoding"    # Ljava/lang/String;

    .prologue
    .line 156
    :try_start_0
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    .line 157
    .local v3, "charsetOut":Ljava/nio/charset/Charset;
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 159
    .local v2, "charsetIn":Ljava/nio/charset/Charset;
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 160
    .local v0, "bufferIn":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 161
    .local v4, "dataIn":Ljava/nio/CharBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 162
    const/4 v0, 0x0

    .line 164
    invoke-virtual {v3, v4}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 165
    .local v1, "bufferOut":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 166
    const/4 v4, 0x0

    .line 167
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 168
    .local v5, "dataOut":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 169
    const/4 v1, 0x0

    .line 171
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "bufferIn":Ljava/nio/ByteBuffer;
    .end local v1    # "bufferOut":Ljava/nio/ByteBuffer;
    .end local v2    # "charsetIn":Ljava/nio/charset/Charset;
    .end local v3    # "charsetOut":Ljava/nio/charset/Charset;
    .end local v4    # "dataIn":Ljava/nio/CharBuffer;
    .end local v5    # "dataOut":[B
    :goto_0
    return-object v7

    .line 173
    :catch_0
    move-exception v6

    .line 174
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    const-string v7, "UtilsModule"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported encoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const/4 v7, 0x0

    goto :goto_0
.end method
