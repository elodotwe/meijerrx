.class final Lcom/google/zxing/client/android/book/BrowseBookListener;
.super Ljava/lang/Object;
.source "BrowseBookListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final activity:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/client/android/book/SearchBookContentsResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "activity"    # Lcom/google/zxing/client/android/book/SearchBookContentsActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/book/SearchBookContentsActivity;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/client/android/book/SearchBookContentsResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/client/android/book/SearchBookContentsResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/zxing/client/android/book/BrowseBookListener;->activity:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    .line 34
    iput-object p2, p0, Lcom/google/zxing/client/android/book/BrowseBookListener;->items:Ljava/util/List;

    .line 35
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    if-ge p3, v7, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v7, p0, Lcom/google/zxing/client/android/book/BrowseBookListener;->items:Ljava/util/List;

    add-int/lit8 v8, p3, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/client/android/book/SearchBookContentsResult;

    invoke-virtual {v7}, Lcom/google/zxing/client/android/book/SearchBookContentsResult;->getPageId()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "pageId":Ljava/lang/String;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsResult;->getQuery()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "query":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/zxing/client/android/book/BrowseBookListener;->activity:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-virtual {v7}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getISBN()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/zxing/client/android/LocaleManager;->isBookSearchUrl(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 46
    iget-object v7, p0, Lcom/google/zxing/client/android/book/BrowseBookListener;->activity:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-virtual {v7}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getISBN()Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "uri":Ljava/lang/String;
    const/16 v7, 0x3d

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 48
    .local v0, "equals":I
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, "volumeId":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://books.google."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/zxing/client/android/book/BrowseBookListener;->activity:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-static {v8}, Lcom/google/zxing/client/android/LocaleManager;->getBookSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/books?id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&pg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&vq="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "readBookURI":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v7, 0x80000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    iget-object v7, p0, Lcom/google/zxing/client/android/book/BrowseBookListener;->activity:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-virtual {v7, v1}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
