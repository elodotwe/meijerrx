.class Lti/modules/titanium/ui/widget/tableview/TiTableView$1;
.super Ljava/lang/Object;
.source "TiTableView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/tableview/TiTableView;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastValidfirstItem:I

.field private scrollValid:Z

.field final synthetic this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

.field final synthetic val$fProxy:Lorg/appcelerator/kroll/KrollProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 296
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    iput-object p2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->val$fProxy:Lorg/appcelerator/kroll/KrollProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->scrollValid:Z

    .line 298
    iput v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->lastValidfirstItem:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 323
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->scrollValid:Z

    .line 324
    .local v1, "fireScroll":Z
    if-nez v1, :cond_0

    if-lez p3, :cond_0

    .line 327
    iget v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->lastValidfirstItem:I

    if-eq v3, p2, :cond_2

    const/4 v1, 0x1

    .line 329
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 330
    iput p2, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->lastValidfirstItem:I

    .line 331
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 332
    .local v0, "eventArgs":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "firstVisibleItem"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v3, "visibleItemCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v3, "totalItemCount"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 336
    .local v2, "size":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "width"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v3, "height"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v3, "size"

    invoke-virtual {v0, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->val$fProxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v4, "scroll"

    invoke-virtual {v3, v4, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 341
    .end local v0    # "eventArgs":Lorg/appcelerator/kroll/KrollDict;
    .end local v2    # "size":Lorg/appcelerator/kroll/KrollDict;
    :cond_1
    return-void

    .line 327
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v3, 0x1

    .line 303
    if-nez p2, :cond_1

    .line 304
    const/4 v3, 0x0

    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->scrollValid:Z

    .line 305
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 306
    .local v0, "eventArgs":Lorg/appcelerator/kroll/KrollDict;
    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 307
    .local v2, "size":Lorg/appcelerator/kroll/KrollDict;
    const-string v3, "width"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v3, "height"

    iget-object v4, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v3, "size"

    invoke-virtual {v0, v3, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v1, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v1, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    .line 311
    .local v1, "scrollEndArgs":Lorg/appcelerator/kroll/KrollDict;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->val$fProxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v4, "scrollend"

    invoke-virtual {v3, v4, v0}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 313
    iget-object v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->val$fProxy:Lorg/appcelerator/kroll/KrollProxy;

    const-string v4, "scrollEnd"

    invoke-virtual {v3, v4, v1}, Lorg/appcelerator/kroll/KrollProxy;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 318
    .end local v0    # "eventArgs":Lorg/appcelerator/kroll/KrollDict;
    .end local v1    # "scrollEndArgs":Lorg/appcelerator/kroll/KrollDict;
    .end local v2    # "size":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    if-ne p2, v3, :cond_0

    .line 316
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$1;->scrollValid:Z

    goto :goto_0
.end method
