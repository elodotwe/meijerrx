.class Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$1;
.super Landroid/widget/LinearLayout;
.source "TiUIDateSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->createNativeView(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 86
    iput-object p1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$1;->this$0:Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 90
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 91
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner$1;->this$0:Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;

    invoke-static {v0}, Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;->access$000(Lti/modules/titanium/ui/widget/picker/TiUIDateSpinner;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 92
    return-void
.end method
