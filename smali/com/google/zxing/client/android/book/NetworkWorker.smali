.class final Lcom/google/zxing/client/android/book/NetworkWorker;
.super Ljava/lang/Object;
.source "NetworkWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final isbn:Ljava/lang/String;

.field private final query:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/zxing/client/android/book/NetworkWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/NetworkWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .param p1, "isbn"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/zxing/client/android/book/NetworkWorker;->isbn:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/google/zxing/client/android/book/NetworkWorker;->query:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/google/zxing/client/android/book/NetworkWorker;->handler:Landroid/os/Handler;

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 51
    :try_start_0
    iget-object v8, p0, Lcom/google/zxing/client/android/book/NetworkWorker;->isbn:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/zxing/client/android/LocaleManager;->isBookSearchUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 52
    iget-object v8, p0, Lcom/google/zxing/client/android/book/NetworkWorker;->isbn:Ljava/lang/String;

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 53
    .local v1, "equals":I
    iget-object v8, p0, Lcom/google/zxing/client/android/book/NetworkWorker;->isbn:Ljava/lang/String;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "volumeId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://www.google.com/books?id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&jscmd=SearchWithinVolume2&q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/zxing/client/android/book/NetworkWorker;->query:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 60
    .end local v1    # "equals":I
    .end local v7    # "volumeId":Ljava/lang/String;
    .local v6, "uri":Ljava/lang/String;
    :goto_0
    :try_start_1
    sget-object v8, Lcom/google/zxing/client/android/HttpHelper$ContentType;->JSON:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    invoke-static {v6, v8}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "content":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .local v4, "json":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/google/zxing/client/android/book/NetworkWorker;->handler:Landroid/os/Handler;

    const-string v9, "search_book_contents_succeeded"

    invoke-static {v9}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 63
    .local v5, "message":Landroid/os/Message;
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 74
    .end local v0    # "content":Ljava/lang/String;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v6    # "uri":Ljava/lang/String;
    :goto_1
    return-void

    .line 56
    .end local v5    # "message":Landroid/os/Message;
    :cond_0
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://www.google.com/books?vid=isbn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/zxing/client/android/book/NetworkWorker;->isbn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&jscmd=SearchWithinVolume2&q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/zxing/client/android/book/NetworkWorker;->query:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "uri":Ljava/lang/String;
    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "ioe":Ljava/io/IOException;
    iget-object v8, p0, Lcom/google/zxing/client/android/book/NetworkWorker;->handler:Landroid/os/Handler;

    const-string v9, "search_book_contents_failed"

    invoke-static {v9}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 67
    .restart local v5    # "message":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 69
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v5    # "message":Landroid/os/Message;
    .end local v6    # "uri":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 70
    .local v3, "je":Lorg/json/JSONException;
    sget-object v8, Lcom/google/zxing/client/android/book/NetworkWorker;->TAG:Ljava/lang/String;

    const-string v9, "Error accessing book search"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    iget-object v8, p0, Lcom/google/zxing/client/android/book/NetworkWorker;->handler:Landroid/os/Handler;

    const-string v9, "search_book_contents_failed"

    invoke-static {v9}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 72
    .restart local v5    # "message":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
