.class Lti/modules/titanium/ui/widget/listview/TiListView$2;
.super Ljava/lang/Object;
.source "TiListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/listview/TiListView;->scrollToItem(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/listview/TiListView;I)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/TiListView$2;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    iput p2, p0, Lti/modules/titanium/ui/widget/listview/TiListView$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lti/modules/titanium/ui/widget/listview/TiListView$2;->this$0:Lti/modules/titanium/ui/widget/listview/TiListView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/listview/TiListView;->access$000(Lti/modules/titanium/ui/widget/listview/TiListView;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lti/modules/titanium/ui/widget/listview/TiListView$2;->val$position:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 948
    return-void
.end method
