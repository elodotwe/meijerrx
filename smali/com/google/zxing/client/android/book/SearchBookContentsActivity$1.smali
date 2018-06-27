.class Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;
.super Landroid/os/Handler;
.source "SearchBookContentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/book/SearchBookContentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 71
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "search_book_contents_succeeded"

    invoke-static {v1}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$000(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;Lorg/json/JSONObject;)V

    .line 73
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-static {v0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$100(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "search_book_contents_failed"

    invoke-static {v1}, Lti/barcode/RHelper;->getId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-static {v0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$100(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V

    .line 76
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-static {v0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$200(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "msg_sbc_failed"

    invoke-static {v1}, Lti/barcode/RHelper;->getString(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
