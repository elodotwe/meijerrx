.class Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
.super Ljava/lang/Object;
.source "TiUIImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Loader"
.end annotation


# instance fields
.field private bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;",
            ">;"
        }
    .end annotation
.end field

.field private hashTable:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private repeatIndex:I

.field private sleepTime:I

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

.field private waitTime:I


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 287
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->waitTime:I

    .line 283
    const/16 v0, 0x32

    iput v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->sleepTime:I

    .line 284
    iput v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    .line 288
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 289
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->hashTable:Ljava/util/LinkedList;

    .line 290
    return-void
.end method

.method private getCounter()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, -0x1

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getStart()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 303
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v0

    .line 306
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private isNotFinalFrame(I)Z
    .locals 4
    .param p1, "frame"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 315
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1000(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 316
    :try_start_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 317
    monitor-exit v2

    .line 322
    :goto_0
    return v0

    .line 319
    :cond_0
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    if-ltz p1, :cond_1

    move v0, v1

    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 322
    :cond_2
    :try_start_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    move v0, v1

    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private isRepeating()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 294
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->getRepeatCount()I

    move-result v0

    .line 295
    .local v0, "repeatCount":I
    if-gtz v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    if-lt v2, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBitmapQueue()Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method public run()V
    .locals 20

    .prologue
    .line 336
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v9

    if-nez v9, :cond_1

    .line 337
    const-string v9, "TiUIImageView"

    const-string v12, "Multi-image loader exiting early because proxy has been gc\'d"

    invoke-static {v9, v12}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    return-void

    .line 340
    :cond_1
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    .line 341
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 342
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const/4 v12, 0x0

    invoke-static {v9, v12}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$702(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z

    .line 343
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->getRepeatCount()I

    move-result v9

    const/4 v12, 0x5

    if-lt v9, v12, :cond_3

    const/4 v8, 0x1

    .line 344
    .local v8, "shouldCache":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->isRepeating()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_4

    .line 427
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 429
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->hashTable:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 430
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$400(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->hashTable:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/appcelerator/titanium/util/TiImageLruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 343
    .end local v8    # "shouldCache":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 349
    .restart local v8    # "shouldCache":Z
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 350
    .local v10, "time":J
    invoke-direct/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->getStart()I

    move-result v7

    .local v7, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->isNotFinalFrame(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 351
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v9

    const/4 v12, 0x5

    if-ne v9, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$700(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 352
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const-string v12, "images"

    invoke-static {v9, v12}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$800(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const/4 v12, 0x1

    invoke-static {v9, v12}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$702(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z

    .line 355
    :cond_5
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1200(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v9

    if-nez v9, :cond_8

    .line 357
    :try_start_0
    const-string v9, "TiUIImageView"

    const-string v12, "Pausing"

    const-string v13, "DEBUG_MODE"

    invoke-static {v9, v12, v13}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1300(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/widget/TiUIImageView$Loader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    if-nez v9, :cond_7

    .line 424
    :cond_6
    const-string v9, "TiUIImageView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TIME TO LOAD FRAMES: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "DEBUG_MODE"

    invoke-static {v9, v12, v13}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 363
    :cond_7
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 364
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    .line 365
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 367
    :try_start_3
    const-string v9, "TiUIImageView"

    const-string v12, "Waking from pause."

    const-string v13, "DEBUG_MODE"

    invoke-static {v9, v12, v13}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v9

    if-eqz v9, :cond_2

    .line 378
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1400(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_2

    .line 382
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->waitTime:I

    .line 383
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1000(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 384
    :try_start_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v7, v9, :cond_a

    .line 385
    :cond_9
    monitor-exit v12

    goto/16 :goto_1

    .line 420
    :catchall_0
    move-exception v9

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    .line 365
    :catchall_1
    move-exception v9

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v9
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 373
    :catch_0
    move-exception v4

    .line 374
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v9, "TiUIImageView"

    const-string v12, "Interrupted from paused state."

    invoke-static {v9, v12}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 387
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 388
    .local v6, "imageRef":Lorg/appcelerator/titanium/view/TiDrawableReference;
    const/4 v2, 0x0

    .line 389
    .local v2, "b":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_d

    .line 390
    invoke-virtual {v6}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v5

    .line 391
    .local v5, "hash":I
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$400(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/appcelerator/titanium/util/TiImageLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "b":Landroid/graphics/Bitmap;
    check-cast v2, Landroid/graphics/Bitmap;

    .line 392
    .restart local v2    # "b":Landroid/graphics/Bitmap;
    if-nez v2, :cond_b

    .line 393
    const-string v9, "TiUIImageView"

    const-string v13, "Image isn\'t cached"

    invoke-static {v9, v13}, Lorg/appcelerator/kroll/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 395
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$400(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13, v2}, Lorg/appcelerator/titanium/util/TiImageLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->hashTable:Ljava/util/LinkedList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v5    # "hash":I
    :cond_b
    :goto_5
    new-instance v3, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;

    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {v3, v9, v2, v7}, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;I)V

    .line 402
    .local v3, "bIndex":Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
    :goto_6
    move-object/from16 v0, p0

    iget v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->waitTime:I

    int-to-double v14, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->getDuration()D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v9

    int-to-double v0, v9

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    cmpg-double v9, v14, v16

    if-gez v9, :cond_c

    .line 404
    :try_start_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->bitmapQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v9, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 405
    move-object/from16 v0, p0

    iget-object v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v9}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1400(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v9

    if-eqz v9, :cond_e

    .line 420
    :cond_c
    :goto_7
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 421
    move-object/from16 v0, p0

    iget v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->repeatIndex:I

    .line 350
    invoke-direct/range {p0 .. p0}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->getCounter()I

    move-result v9

    add-int/2addr v7, v9

    goto/16 :goto_3

    .line 399
    .end local v3    # "bIndex":Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
    :cond_d
    const/4 v9, 0x1

    :try_start_a
    invoke-virtual {v6, v9}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmap(Z)Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v2

    goto :goto_5

    .line 408
    .restart local v3    # "bIndex":Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
    :cond_e
    :try_start_b
    move-object/from16 v0, p0

    iget v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->sleepTime:I

    int-to-long v14, v9

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 409
    move-object/from16 v0, p0

    iget v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->waitTime:I

    move-object/from16 v0, p0

    iget v13, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->sleepTime:I

    add-int/2addr v9, v13

    move-object/from16 v0, p0

    iput v9, v0, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->waitTime:I
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6

    .line 415
    :catch_1
    move-exception v4

    .line 416
    .restart local v4    # "e":Ljava/lang/InterruptedException;
    :try_start_c
    const-string v9, "TiUIImageView"

    const-string v13, "Interrupted while adding Bitmap into bitmapQueue"

    invoke-static {v9, v13}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7
.end method
