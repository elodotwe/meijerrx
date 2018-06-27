.class Lti/modules/titanium/ui/widget/listview/TiListItem$1;
.super Ljava/lang/Object;
.source "TiListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/listview/TiListItem;->setOnClickListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/listview/TiListItem;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/listview/TiListItem;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lti/modules/titanium/ui/widget/listview/TiListItem$1;->this$0:Lti/modules/titanium/ui/widget/listview/TiListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListItem$1;->this$0:Lti/modules/titanium/ui/widget/listview/TiListItem;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/listview/TiListItem$1;->this$0:Lti/modules/titanium/ui/widget/listview/TiListItem;

    invoke-static {v2}, Lti/modules/titanium/ui/widget/listview/TiListItem;->access$000(Lti/modules/titanium/ui/widget/listview/TiListItem;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-static {v1, v2}, Lti/modules/titanium/ui/widget/listview/TiListItem;->access$100(Lti/modules/titanium/ui/widget/listview/TiListItem;Lorg/appcelerator/kroll/KrollDict;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 84
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListItem$1;->this$0:Lti/modules/titanium/ui/widget/listview/TiListItem;

    new-instance v2, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v2, v0}, Lorg/appcelerator/kroll/KrollDict;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lti/modules/titanium/ui/widget/listview/TiListItem;->handleFireItemClick(Lorg/appcelerator/kroll/KrollDict;)V

    .line 85
    iget-object v1, p0, Lti/modules/titanium/ui/widget/listview/TiListItem$1;->this$0:Lti/modules/titanium/ui/widget/listview/TiListItem;

    const-string v2, "click"

    invoke-virtual {v1, v2, v0}, Lti/modules/titanium/ui/widget/listview/TiListItem;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 86
    return-void
.end method
