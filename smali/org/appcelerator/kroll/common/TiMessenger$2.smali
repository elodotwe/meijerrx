.class Lorg/appcelerator/kroll/common/TiMessenger$2;
.super Lorg/appcelerator/kroll/common/AsyncResult;
.source "TiMessenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/appcelerator/kroll/common/TiMessenger;->sendBlockingMessage(Landroid/os/Message;Lorg/appcelerator/kroll/common/TiMessenger;Ljava/lang/Object;J)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/kroll/common/TiMessenger;

.field final synthetic val$maxTimeout:J


# direct methods
.method constructor <init>(Lorg/appcelerator/kroll/common/TiMessenger;Ljava/lang/Object;J)V
    .locals 1
    .param p2, "x0"    # Ljava/lang/Object;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->this$0:Lorg/appcelerator/kroll/common/TiMessenger;

    iput-wide p3, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->val$maxTimeout:J

    invoke-direct {p0, p2}, Lorg/appcelerator/kroll/common/AsyncResult;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, "timeout":I
    const-wide/16 v2, 0x0

    .line 248
    .local v2, "elapsedTime":J
    :cond_0
    int-to-long v4, v1

    :try_start_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v4, v5, v6}, Lorg/appcelerator/kroll/common/TiMessenger$2;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 249
    iget-object v4, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->this$0:Lorg/appcelerator/kroll/common/TiMessenger;

    iget-object v4, v4, Lorg/appcelerator/kroll/common/TiMessenger;->messageQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 250
    const/16 v1, 0x32

    .line 255
    :goto_0
    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 256
    iget-wide v4, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->val$maxTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget-wide v4, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->val$maxTimeout:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 257
    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "getResult() has timed out."

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lorg/appcelerator/kroll/common/TiMessenger$2;->setException(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 269
    const-string v4, "TiMessenger"

    const-string v5, "Unable to get the result from the blocking message."

    iget-object v6, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    :cond_2
    iget-object v4, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->result:Ljava/lang/Object;

    return-object v4

    .line 252
    :cond_3
    :try_start_1
    iget-object v4, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->this$0:Lorg/appcelerator/kroll/common/TiMessenger;

    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/TiMessenger;->dispatchPendingMessages()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 263
    const-string v4, "TiMessenger"

    const-string v5, "Interrupted waiting for async result"

    invoke-static {v4, v5, v0}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    :cond_4
    iget-object v4, p0, Lorg/appcelerator/kroll/common/TiMessenger$2;->this$0:Lorg/appcelerator/kroll/common/TiMessenger;

    invoke-virtual {v4}, Lorg/appcelerator/kroll/common/TiMessenger;->dispatchPendingMessages()V

    goto :goto_1
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 278
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/common/AsyncResult;->setResult(Ljava/lang/Object;)V

    .line 279
    return-void
.end method
