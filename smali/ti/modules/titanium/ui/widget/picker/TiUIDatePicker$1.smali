.class Lti/modules/titanium/ui/widget/picker/TiUIDatePicker$1;
.super Landroid/widget/DatePicker;
.source "TiUIDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;

.field final synthetic val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;Landroid/content/Context;Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker$1;->this$0:Lti/modules/titanium/ui/widget/picker/TiUIDatePicker;

    iput-object p3, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-direct {p0, p2}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;)V

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
    .line 55
    invoke-super/range {p0 .. p5}, Landroid/widget/DatePicker;->onLayout(ZIIII)V

    .line 56
    iget-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUIDatePicker$1;->val$proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiUIHelper;->firePostLayoutEvent(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 57
    return-void
.end method
