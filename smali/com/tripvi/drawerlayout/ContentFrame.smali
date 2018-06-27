.class public Lcom/tripvi/drawerlayout/ContentFrame;
.super Lorg/appcelerator/titanium/view/TiCompositeLayout;
.source "ContentFrame.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    sget v0, Lcom/tripvi/drawerlayout/Drawer;->id_content_frame:I

    invoke-virtual {p0, v0}, Lcom/tripvi/drawerlayout/ContentFrame;->setId(I)V

    .line 18
    return-void
.end method
