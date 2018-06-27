.class public Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;
.super Ljava/lang/Object;
.source "TiAnimationBuilder.java"

# interfaces
.implements Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/appcelerator/titanium/util/TiAnimationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimatorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;


# direct methods
.method protected constructor <init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder;)V
    .locals 0

    .prologue
    .line 1327
    iput-object p1, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 1332
    instance-of v0, p1, Lcom/nineoldandroids/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->access$000(Landroid/view/View;Z)V

    .line 1335
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 9
    .param p1, "animator"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    const/4 v8, 0x0

    .line 1340
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-boolean v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    if-eqz v4, :cond_4

    .line 1341
    invoke-static {}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1342
    const/4 v2, 0x0

    .line 1343
    .local v2, "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v3, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    .line 1344
    .local v3, "viewToSetParams":Landroid/view/View;
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lorg/appcelerator/titanium/view/TiBorderWrapperView;

    if-eqz v4, :cond_0

    .line 1345
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .end local v3    # "viewToSetParams":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 1347
    .restart local v3    # "viewToSetParams":Landroid/view/View;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    check-cast v2, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .line 1348
    .restart local v2    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->options:Ljava/util/HashMap;

    invoke-static {v4, v2}, Lorg/appcelerator/titanium/util/TiConvert;->fillLayout(Ljava/util/HashMap;Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;)Z

    .line 1349
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 1351
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iput-boolean v8, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->relayoutChild:Z

    .line 1354
    .end local v2    # "params":Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    .end local v3    # "viewToSetParams":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->options:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1355
    .local v1, "key":Ljava/lang/Object;
    const-string v4, "top"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "bottom"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "left"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "right"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "center"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "width"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "height"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "backgroundColor"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1363
    :cond_3
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v5, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v6, v6, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->options:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1368
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/Object;
    :cond_4
    instance-of v4, p1, Lcom/nineoldandroids/animation/AnimatorSet;

    if-eqz v4, :cond_6

    .line 1369
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->view:Landroid/view/View;

    invoke-static {v4, v8}, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->access$000(Landroid/view/View;Z)V

    .line 1370
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/kroll/KrollFunction;

    if-eqz v4, :cond_5

    .line 1371
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->callback:Lorg/appcelerator/kroll/KrollFunction;

    iget-object v5, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v5, v5, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->viewProxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getKrollObject()Lorg/appcelerator/kroll/KrollObject;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v7}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lorg/appcelerator/kroll/KrollFunction;->callAsync(Lorg/appcelerator/kroll/KrollObject;[Ljava/lang/Object;)V

    .line 1375
    :cond_5
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v4, :cond_6

    .line 1381
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_7

    .line 1382
    iget-object v4, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v4, v4, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    const-string v5, "complete"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/appcelerator/titanium/view/TiAnimation;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1398
    :cond_6
    :goto_1
    return-void

    .line 1384
    :cond_7
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v4

    new-instance v5, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener$1;

    invoke-direct {v5, p0}, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener$1;-><init>(Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;)V

    invoke-virtual {v4, v5}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_1
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 1402
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Lcom/nineoldandroids/animation/Animator;

    .prologue
    .line 1406
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lorg/appcelerator/titanium/util/TiAnimationBuilder$AnimatorListener;->this$0:Lorg/appcelerator/titanium/util/TiAnimationBuilder;

    iget-object v0, v0, Lorg/appcelerator/titanium/util/TiAnimationBuilder;->animationProxy:Lorg/appcelerator/titanium/view/TiAnimation;

    const-string v1, "start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/titanium/view/TiAnimation;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1409
    :cond_0
    return-void
.end method
