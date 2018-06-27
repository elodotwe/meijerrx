.class public Lti/modules/titanium/network/httpurlconnection/JsonBody;
.super Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;
.source "JsonBody.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/json"


# instance fields
.field private data:[B

.field private filename:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v1, "application/json"

    invoke-direct {p0, v1}, Lti/modules/titanium/network/httpurlconnection/AbstractContentBody;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/network/httpurlconnection/JsonBody;->value:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lti/modules/titanium/network/httpurlconnection/JsonBody;->filename:Ljava/lang/String;

    .line 29
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/network/httpurlconnection/JsonBody;->value:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/network/httpurlconnection/JsonBody;->data:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v1, p0, Lti/modules/titanium/network/httpurlconnection/JsonBody;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lti/modules/titanium/network/httpurlconnection/JsonBody;->data:[B

    goto :goto_0
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lti/modules/titanium/network/httpurlconnection/JsonBody;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lti/modules/titanium/network/httpurlconnection/JsonBody;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "8bit"

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lti/modules/titanium/network/httpurlconnection/JsonBody;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 58
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 60
    return-void
.end method
