.class Lti/modules/titanium/ui/widget/TiUIImageView$Animator;
.super Ljava/util/TimerTask;
.source "TiUIImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Animator"
.end annotation


# instance fields
.field private loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;Lti/modules/titanium/ui/widget/TiUIImageView$Loader;)V
    .locals 0
    .param p2, "loader"    # Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .prologue
    .line 524
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 525
    iput-object p2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    .line 526
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 530
    const/4 v4, 0x0

    .line 532
    .local v4, "waitOnResume":Z
    :try_start_0
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v5}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1200(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 533
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :try_start_1
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 535
    .local v2, "data":Lorg/appcelerator/kroll/KrollDict;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const-string v6, "pause"

    invoke-virtual {v5, v6, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 536
    const/4 v4, 0x1

    .line 537
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 538
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 541
    .end local v2    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    :try_start_2
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->loader:Lti/modules/titanium/ui/widget/TiUIImageView$Loader;

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/TiUIImageView$Loader;->getBitmapQueue()Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v1

    .line 543
    .local v1, "bitmapQueue":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;>;"
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v5}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1100(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 544
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v5}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1500(Lti/modules/titanium/ui/widget/TiUIImageView;)V

    .line 546
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;

    .line 547
    .local v0, "b":Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
    const-string v5, "TiUIImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;->index:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DEBUG_MODE"

    invoke-static {v5, v6, v7}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iget-object v6, v0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$600(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V

    .line 549
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iget v6, v0, Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;->index:I

    invoke-static {v5, v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1600(Lti/modules/titanium/ui/widget/TiUIImageView;I)V

    .line 555
    if-eqz v4, :cond_2

    .line 556
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView$Animator;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v5}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$1700(Lti/modules/titanium/ui/widget/TiUIImageView;)I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 557
    const/4 v4, 0x0

    .line 562
    .end local v0    # "b":Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;
    .end local v1    # "bitmapQueue":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<Lti/modules/titanium/ui/widget/TiUIImageView$BitmapWithIndex;>;"
    :cond_2
    :goto_0
    return-void

    .line 538
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 559
    :catch_0
    move-exception v3

    .line 560
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v5, "TiUIImageView"

    const-string v6, "Loader interrupted"

    invoke-static {v5, v6}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
