.class Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;
.super Ljava/lang/Object;
.source "TiUISearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->this$0:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->this$0:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->access$000(Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 76
    iget-object v0, p0, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar$1;->this$0:Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;

    const-string v1, "cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lti/modules/titanium/ui/widget/searchbar/TiUISearchBar;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 77
    return-void
.end method
