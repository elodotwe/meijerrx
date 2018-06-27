.class Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;
.super Ljava/lang/Object;
.source "TiHTTPClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/network/TiHTTPClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientRunnable"
.end annotation


# static fields
.field private static final LINE_FEED:Ljava/lang/String; = "\r\n"


# instance fields
.field private boundary:Ljava/lang/String;

.field private outputStream:Ljava/io/OutputStream;

.field private printWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Lti/modules/titanium/network/TiHTTPClient;

.field private final totalLength:I


# direct methods
.method public constructor <init>(Lti/modules/titanium/network/TiHTTPClient;I)V
    .locals 0
    .param p2, "totalLength"    # I

    .prologue
    .line 1090
    iput-object p1, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1091
    iput p2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:I

    .line 1092
    return-void
.end method

.method static synthetic access$900(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)I
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;

    .prologue
    .line 1081
    iget v0, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->totalLength:I

    return v0
.end method

.method private addFilePart(Ljava/lang/String;Lti/modules/titanium/network/httpurlconnection/ContentBody;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentBody"    # Lti/modules/titanium/network/httpurlconnection/ContentBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1265
    invoke-interface {p2}, Lti/modules/titanium/network/httpurlconnection/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 1267
    .local v0, "fileName":Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->boundary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1268
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Disposition: form-data; name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1269
    if-eqz v0, :cond_0

    .line 1270
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "; filename=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1272
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1273
    invoke-interface {p2}, Lti/modules/titanium/network/httpurlconnection/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 1274
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1275
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lti/modules/titanium/network/httpurlconnection/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1276
    invoke-interface {p2}, Lti/modules/titanium/network/httpurlconnection/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1277
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "; charset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lti/modules/titanium/network/httpurlconnection/ContentBody;->getCharset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1279
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1281
    :cond_2
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Transfer-Encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lti/modules/titanium/network/httpurlconnection/ContentBody;->getTransferEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1282
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1283
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1285
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->outputStream:Ljava/io/OutputStream;

    invoke-interface {p2, v2}, Lti/modules/titanium/network/httpurlconnection/ContentBody;->writeTo(Ljava/io/OutputStream;)V

    .line 1287
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1288
    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 1290
    return-void
.end method

.method private handleURLEncodedData(Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;)V
    .locals 5
    .param p1, "form"    # Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1301
    const/4 v0, 0x0

    .line 1302
    .local v0, "entity":Lti/modules/titanium/network/httpurlconnection/Entity;
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v3}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1304
    :try_start_0
    new-instance v1, Lti/modules/titanium/network/httpurlconnection/StringEntity;

    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v3}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v1, v3, v4}, Lti/modules/titanium/network/httpurlconnection/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "entity":Lti/modules/titanium/network/httpurlconnection/Entity;
    .local v1, "entity":Lti/modules/titanium/network/httpurlconnection/Entity;
    move-object v0, v1

    .line 1319
    .end local v1    # "entity":Lti/modules/titanium/network/httpurlconnection/Entity;
    .restart local v0    # "entity":Lti/modules/titanium/network/httpurlconnection/Entity;
    :goto_0
    if-eqz v0, :cond_0

    .line 1320
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Lti/modules/titanium/network/httpurlconnection/Entity;->writeTo(Ljava/io/OutputStream;)V

    .line 1321
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1324
    :cond_0
    return-void

    .line 1306
    :catch_0
    move-exception v2

    .line 1308
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "TiHTTPClient"

    const-string v4, "Exception, implement recovery: "

    invoke-static {v3, v4, v2}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1310
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v3}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lti/modules/titanium/network/httpurlconnection/Entity;

    if-eqz v3, :cond_2

    .line 1311
    iget-object v3, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v3}, Lti/modules/titanium/network/TiHTTPClient;->access$1700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entity":Lti/modules/titanium/network/httpurlconnection/Entity;
    check-cast v0, Lti/modules/titanium/network/httpurlconnection/Entity;

    .restart local v0    # "entity":Lti/modules/titanium/network/httpurlconnection/Entity;
    goto :goto_0

    .line 1313
    :cond_2
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public completeSendingMultipart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1293
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1294
    iget-object v0, p0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1296
    return-void
.end method

.method public run()V
    .locals 20

    .prologue
    .line 1097
    const-wide/16 v16, 0xa

    :try_start_0
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V

    .line 1098
    const-string v15, "TiHTTPClient"

    const-string v16, "send()"

    const-string v17, "DEBUG_MODE"

    invoke-static/range {v15 .. v17}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const-string v15, "TiHTTPClient"

    const-string v16, "Preparing to execute request"

    const-string v17, "DEBUG_MODE"

    invoke-static/range {v15 .. v17}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1111
    const/4 v12, 0x0

    .line 1114
    .local v12, "result":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lti/modules/titanium/network/TiHTTPClient;->access$200(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static/range {v15 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$102(Lti/modules/titanium/network/TiHTTPClient;Ljava/net/URL;)Ljava/net/URL;

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$100(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/URL;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v15

    check-cast v15, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lti/modules/titanium/network/TiHTTPClient;->access$302(Lti/modules/titanium/network/TiHTTPClient;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 1116
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->setUpClient(Ljava/net/HttpURLConnection;)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    instance-of v15, v15, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v15, :cond_0

    .line 1119
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v13

    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    .line 1120
    .local v13, "securedConnection":Ljavax/net/ssl/HttpsURLConnection;
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->validatesSecureCertificate()Z

    move-result v16

    move/from16 v0, v16

    invoke-static {v15, v0, v13}, Lti/modules/titanium/network/TiHTTPClient;->access$400(Lti/modules/titanium/network/TiHTTPClient;ZLjavax/net/ssl/HttpsURLConnection;)V

    .line 1123
    .end local v13    # "securedConnection":Ljavax/net/ssl/HttpsURLConnection;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$500(Lti/modules/titanium/network/TiHTTPClient;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 1124
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$500(Lti/modules/titanium/network/TiHTTPClient;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$500(Lti/modules/titanium/network/TiHTTPClient;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1128
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$000(Lti/modules/titanium/network/TiHTTPClient;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    if-eqz v15, :cond_2

    .line 1212
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1250
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1400(Lti/modules/titanium/network/TiHTTPClient;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$302(Lti/modules/titanium/network/TiHTTPClient;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 1255
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$1502(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1259
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1600(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v15

    const-string v16, "disposehandle"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1262
    .end local v12    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 1132
    .restart local v12    # "result":Ljava/lang/String;
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "POST"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "PUT"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "PATCH"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_3
    const/4 v9, 0x1

    .line 1134
    .local v9, "isPostOrPutOrPatch":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$600(Lti/modules/titanium/network/TiHTTPClient;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1136
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1137
    if-eqz v9, :cond_4

    .line 1138
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1140
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    const-string v16, "Accept-Encoding"

    const-string v17, "identity"

    invoke-virtual/range {v15 .. v17}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    const-string v16, "X-Titanium-Id"

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/appcelerator/titanium/TiApplication;->getAppGUID()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    if-lez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1146
    invoke-static {}, Lti/modules/titanium/network/httpurlconnection/HttpUrlConnectionUtils;->generateBoundary()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->boundary:Ljava/lang/String;

    .line 1147
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    const-string v16, "Content-Type"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "multipart/form-data; boundary="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->boundary:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v15, v15, Lti/modules/titanium/network/TiHTTPClient;->requestHeaders:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1153
    .local v7, "header":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    iget-object v15, v15, Lti/modules/titanium/network/TiHTTPClient;->requestHeaders:Ljava/util/HashMap;

    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1207
    .end local v7    # "header":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "isPostOrPutOrPatch":Z
    :catch_0
    move-exception v4

    .line 1208
    .local v4, "e":Ljava/io/IOException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$000(Lti/modules/titanium/network/TiHTTPClient;)Z

    move-result v15

    if-nez v15, :cond_10

    .line 1209
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1212
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v15
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1230
    .end local v12    # "result":Ljava/lang/String;
    :catch_1
    move-exception v14

    .line 1231
    .local v14, "t":Ljava/lang/Throwable;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    if-eqz v15, :cond_13

    .line 1232
    const-string v15, "TiHTTPClient"

    const-string v16, "clearing the expired and idle connections"

    const-string v17, "DEBUG_MODE"

    invoke-static/range {v15 .. v17}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1238
    :goto_4
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 1239
    .local v10, "msg":Ljava/lang/String;
    if-nez v10, :cond_5

    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 1240
    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 1242
    :cond_5
    if-nez v10, :cond_6

    .line 1243
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1245
    :cond_6
    const-string v15, "TiHTTPClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "HTTP Error ("

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1246
    new-instance v3, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v3}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 1247
    .local v3, "data":Lorg/appcelerator/kroll/KrollDict;
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v15}, Lti/modules/titanium/network/TiHTTPClient;->getStatus()I

    move-result v15

    const/16 v16, 0x190

    move/from16 v0, v16

    if-lt v15, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v15}, Lti/modules/titanium/network/TiHTTPClient;->getStatus()I

    move-result v15

    :goto_5
    invoke-virtual {v3, v15, v10}, Lorg/appcelerator/kroll/KrollDict;->putCodeAndMessage(ILjava/lang/String;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const-string v16, "onerror"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Lti/modules/titanium/network/TiHTTPClient;->access$1000(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1250
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1400(Lti/modules/titanium/network/TiHTTPClient;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$302(Lti/modules/titanium/network/TiHTTPClient;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 1255
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$1502(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1259
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1600(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v15

    const-string v16, "disposehandle"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1132
    .end local v3    # "data":Lorg/appcelerator/kroll/KrollDict;
    .end local v10    # "msg":Ljava/lang/String;
    .end local v14    # "t":Ljava/lang/Throwable;
    .restart local v12    # "result":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1149
    .restart local v9    # "isPostOrPutOrPatch":Z
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    const-string v16, "Content-Type"

    const-string v17, "application/x-www-form-urlencoded"

    invoke-virtual/range {v15 .. v17}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1156
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_9
    if-eqz v9, :cond_d

    .line 1157
    new-instance v15, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    new-instance v18, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable$1;-><init>(Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;)V

    invoke-direct/range {v15 .. v18}, Lti/modules/titanium/network/TiHTTPClient$ProgressOutputStream;-><init>(Lti/modules/titanium/network/TiHTTPClient;Ljava/io/OutputStream;Lti/modules/titanium/network/TiHTTPClient$ProgressListener;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->outputStream:Ljava/io/OutputStream;

    .line 1166
    new-instance v15, Ljava/io/PrintWriter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-direct/range {v15 .. v17}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->printWriter:Ljava/io/PrintWriter;

    .line 1168
    const/4 v5, 0x0

    .line 1170
    .local v5, "form":Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1100(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v15

    if-lez v15, :cond_a

    .line 1172
    :try_start_8
    new-instance v6, Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1100(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/ArrayList;

    move-result-object v15

    const-string v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-direct {v6, v15, v0}, Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local v5    # "form":Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;
    .local v6, "form":Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;
    move-object v5, v6

    .line 1179
    .end local v6    # "form":Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;
    .restart local v5    # "form":Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;
    :cond_a
    :goto_6
    :try_start_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v15

    if-lez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$800(Lti/modules/titanium/network/TiHTTPClient;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1181
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1182
    .local v11, "name":Ljava/lang/String;
    const-string v16, "TiHTTPClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "adding part "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", part type: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lti/modules/titanium/network/httpurlconnection/ContentBody;

    invoke-interface {v15}, Lti/modules/titanium/network/httpurlconnection/ContentBody;->getMimeType()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, ", len: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lti/modules/titanium/network/httpurlconnection/ContentBody;

    invoke-interface {v15}, Lti/modules/titanium/network/httpurlconnection/ContentBody;->getContentLength()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v17, "DEBUG_MODE"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v15, v1}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$700(Lti/modules/titanium/network/TiHTTPClient;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lti/modules/titanium/network/httpurlconnection/ContentBody;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->addFilePart(Ljava/lang/String;Lti/modules/titanium/network/httpurlconnection/ContentBody;)V

    goto :goto_7

    .line 1174
    .end local v11    # "name":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 1175
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const-string v15, "TiHTTPClient"

    const-string v16, "Unsupported encoding: "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_6

    .line 1187
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_b
    if-eqz v5, :cond_c

    .line 1189
    :try_start_a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;->getContentLength()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-direct {v2, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1190
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v5, v2}, Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 1191
    const-string v15, "form"

    new-instance v16, Lti/modules/titanium/network/httpurlconnection/StringBody;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "application/x-www-form-urlencoded"

    const-string v19, "UTF-8"

    invoke-static/range {v19 .. v19}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v19

    invoke-direct/range {v16 .. v19}, Lti/modules/titanium/network/httpurlconnection/StringBody;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->addFilePart(Ljava/lang/String;Lti/modules/titanium/network/httpurlconnection/ContentBody;)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1200
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_c
    :goto_8
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->completeSendingMultipart()V

    .line 1205
    .end local v5    # "form":Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;
    :cond_d
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$1200(Lti/modules/titanium/network/TiHTTPClient;Ljava/net/HttpURLConnection;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1212
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1216
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "isPostOrPutOrPatch":Z
    :goto_a
    if-eqz v12, :cond_e

    .line 1217
    const-string v15, "TiHTTPClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Have result back from request len="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, "DEBUG_MODE"

    invoke-static/range {v15 .. v17}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$1302(Lti/modules/titanium/network/TiHTTPClient;Z)Z

    .line 1220
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v15, v12}, Lti/modules/titanium/network/TiHTTPClient;->setResponseText(Ljava/lang/String;)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-virtual {v15}, Lti/modules/titanium/network/TiHTTPClient;->getStatus()I

    move-result v15

    const/16 v16, 0x190

    move/from16 v0, v16

    if-lt v15, v0, :cond_11

    .line 1223
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lti/modules/titanium/network/TiHTTPClient;->getStatus()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lti/modules/titanium/network/TiHTTPClient;->getStatusText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1250
    .end local v12    # "result":Ljava/lang/String;
    :catchall_1
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$1400(Lti/modules/titanium/network/TiHTTPClient;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lti/modules/titanium/network/TiHTTPClient;->access$302(Lti/modules/titanium/network/TiHTTPClient;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Lti/modules/titanium/network/TiHTTPClient;->access$1502(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$1600(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v16

    const-string v17, "disposehandle"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    throw v15

    .line 1193
    .restart local v5    # "form":Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "isPostOrPutOrPatch":Z
    .restart local v12    # "result":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 1194
    .restart local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :try_start_d
    const-string v15, "TiHTTPClient"

    const-string v16, "Unsupported encoding: "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1196
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4
    move-exception v4

    .line 1197
    .local v4, "e":Ljava/io/IOException;
    const-string v15, "TiHTTPClient"

    const-string v16, "Error converting form to string: "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v4}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1202
    .end local v4    # "e":Ljava/io/IOException;
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->handleURLEncodedData(Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_9

    .line 1212
    .end local v5    # "form":Lti/modules/titanium/network/httpurlconnection/UrlEncodedFormEntity;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "isPostOrPutOrPatch":Z
    .restart local v4    # "e":Ljava/io/IOException;
    :cond_10
    :try_start_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$300(Lti/modules/titanium/network/TiHTTPClient;)Ljava/net/HttpURLConnection;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_a

    .line 1226
    .end local v4    # "e":Ljava/io/IOException;
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$000(Lti/modules/titanium/network/TiHTTPClient;)Z

    move-result v15

    if-nez v15, :cond_12

    .line 1227
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->setReadyState(I)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1250
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1400(Lti/modules/titanium/network/TiHTTPClient;)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$302(Lti/modules/titanium/network/TiHTTPClient;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 1255
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lti/modules/titanium/network/TiHTTPClient;->access$1502(Lti/modules/titanium/network/TiHTTPClient;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1259
    move-object/from16 v0, p0

    iget-object v15, v0, Lti/modules/titanium/network/TiHTTPClient$ClientRunnable;->this$0:Lti/modules/titanium/network/TiHTTPClient;

    invoke-static {v15}, Lti/modules/titanium/network/TiHTTPClient;->access$1600(Lti/modules/titanium/network/TiHTTPClient;)Lorg/appcelerator/kroll/KrollProxy;

    move-result-object v15

    const-string v16, "disposehandle"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1235
    .end local v12    # "result":Ljava/lang/String;
    .restart local v14    # "t":Ljava/lang/Throwable;
    :cond_13
    :try_start_f
    const-string v15, "TiHTTPClient"

    const-string v16, "client is not valid, unable to clear expired and idle connections"

    invoke-static/range {v15 .. v16}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_4

    .line 1247
    .restart local v3    # "data":Lorg/appcelerator/kroll/KrollDict;
    .restart local v10    # "msg":Ljava/lang/String;
    :cond_14
    const/4 v15, -0x1

    goto/16 :goto_5
.end method
