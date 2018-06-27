.class Lti/modules/titanium/ui/widget/picker/TiUINativePicker$2;
.super Ljava/lang/Object;
.source "TiUINativePicker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/picker/TiUINativePicker;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/picker/TiUINativePicker;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/picker/TiUINativePicker;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$2;->this$0:Lti/modules/titanium/ui/widget/picker/TiUINativePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 117
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 118
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "x"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "y"

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$2;->this$0:Lti/modules/titanium/ui/widget/picker/TiUINativePicker;

    const-string v2, "click"

    invoke-virtual {v1, v2, v0}, Lti/modules/titanium/ui/widget/picker/TiUINativePicker;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 122
    .end local v0    # "data":Lorg/appcelerator/kroll/KrollDict;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
