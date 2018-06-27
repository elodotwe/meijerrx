.class public final Lcom/google/zxing/client/android/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/HttpHelper$1;,
        Lcom/google/zxing/client/android/HttpHelper$ContentType;
    }
.end annotation


# static fields
.field private static final REDIRECTOR_DOMAINS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "amzn.to"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "bit.ly"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bitly.com"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "fb.me"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "goo.gl"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "is.gd"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "j.mp"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "lnkd.in"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ow.ly"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "R.BEETAGG.COM"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "r.beetagg.com"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "SCN.BY"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "su.pr"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "t.co"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "tinyurl.com"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "tr.im"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/zxing/client/android/HttpHelper;->REDIRECTOR_DOMAINS:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static consume(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 10
    .param p0, "connection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {p0}, Lcom/google/zxing/client/android/HttpHelper;->getEncoding(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "encoding":Ljava/lang/String;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    .local v4, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 110
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 111
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 113
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    .line 114
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 117
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catchall_0
    move-exception v7

    .line 118
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 121
    :goto_1
    throw v7

    .line 118
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 124
    :goto_2
    :try_start_3
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 127
    :goto_3
    return-object v7

    .line 125
    :catch_0
    move-exception v5

    .line 127
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    :try_start_4
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 128
    :catch_1
    move-exception v6

    .line 130
    .local v6, "uee2":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 119
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    .end local v6    # "uee2":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    :catch_3
    move-exception v8

    goto :goto_1
.end method

.method public static downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/google/zxing/client/android/HttpHelper$ContentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    sget-object v1, Lcom/google/zxing/client/android/HttpHelper$1;->$SwitchMap$com$google$zxing$client$android$HttpHelper$ContentType:[I

    invoke-virtual {p1}, Lcom/google/zxing/client/android/HttpHelper$ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 72
    const-string v0, "text/*,*/*"

    .line 74
    .local v0, "contentTypes":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 65
    .end local v0    # "contentTypes":Ljava/lang/String;
    :pswitch_0
    const-string v0, "application/xhtml+xml,text/html,text/*,*/*"

    .line 66
    .restart local v0    # "contentTypes":Ljava/lang/String;
    goto :goto_0

    .line 68
    .end local v0    # "contentTypes":Ljava/lang/String;
    :pswitch_1
    const-string v0, "application/json,text/*,*/*"

    .line 69
    .restart local v0    # "contentTypes":Ljava/lang/String;
    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static downloadViaHttp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "contentTypes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 80
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v2, "Accept"

    invoke-virtual {v0, v2, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v2, "Accept-Charset"

    const-string v3, "utf-8,*"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "User-Agent"

    const-string v3, "ZXing (Android)"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 85
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    .line 86
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad HTTP response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v2

    .line 88
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/google/zxing/client/android/HttpHelper;->consume(Ljava/net/URLConnection;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 90
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v2
.end method

.method private static getEncoding(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 3
    .param p0, "connection"    # Ljava/net/URLConnection;

    .prologue
    .line 95
    const-string v2, "Content-Type"

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "contentTypeHeader":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 97
    const-string v2, "charset="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "charsetStart":I
    if-ltz v0, :cond_0

    .line 99
    const-string v2, "charset="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    .end local v0    # "charsetStart":I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, "UTF-8"

    goto :goto_0
.end method

.method public static unredirect(Ljava/net/URI;)Ljava/net/URI;
    .locals 6
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 136
    sget-object v3, Lcom/google/zxing/client/android/HttpHelper;->REDIRECTOR_DOMAINS:Ljava/util/Collection;

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    .end local p0    # "uri":Ljava/net/URI;
    :goto_0
    return-object p0

    .line 139
    .restart local p0    # "uri":Ljava/net/URI;
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    .line 141
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 142
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 143
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 144
    const-string v3, "HEAD"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 145
    const-string v3, "User-Agent"

    const-string v4, "ZXing (Android)"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 148
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 165
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 154
    :pswitch_1
    :try_start_1
    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 155
    .local v1, "location":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 157
    :try_start_2
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object p0, v3

    goto :goto_0

    .end local v1    # "location":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v3

    .line 158
    .restart local v1    # "location":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
