.class Lti/modules/titanium/ui/widget/tableview/TiTableView$2;
.super Ljava/lang/Object;
.source "TiTableView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/tableview/TiTableView;-><init>(Lti/modules/titanium/ui/TableViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/tableview/TiTableView;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
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
    .line 360
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->access$800(Lti/modules/titanium/ui/widget/tableview/TiTableView;)Lti/modules/titanium/ui/widget/tableview/TiTableView$OnItemClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    instance-of v0, p2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    if-nez v0, :cond_1

    .line 366
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 364
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/ui/widget/tableview/TiTableView$2;->this$0:Lti/modules/titanium/ui/widget/tableview/TiTableView;

    check-cast p2, Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;

    .end local p2    # "view":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lti/modules/titanium/ui/widget/tableview/TiTableView;->rowClicked(Lti/modules/titanium/ui/widget/tableview/TiBaseTableViewItem;IZ)Z

    goto :goto_0
.end method
