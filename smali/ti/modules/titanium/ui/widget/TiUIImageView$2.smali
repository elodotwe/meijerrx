.class Lti/modules/titanium/ui/widget/TiUIImageView$2;
.super Ljava/lang/Object;
.source "TiUIImageView.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiLoadImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadImageFailed()V
    .locals 3

    .prologue
    .line 159
    const-string v0, "TiUIImageView"

    const-string v1, "Unable to load image"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method public loadImageFinished(ILandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "hash"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    .line 132
    if-eqz p2, :cond_1

    .line 133
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$400(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/appcelerator/titanium/util/TiImageLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$400(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/util/TiImageLruCache;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/appcelerator/titanium/util/TiImageLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 139
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    .line 140
    .local v0, "imgsrc":Lorg/appcelerator/titanium/view/TiDrawableReference;
    if-nez v0, :cond_2

    .line 154
    .end local v0    # "imgsrc":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_1
    :goto_0
    return-void

    .line 143
    .restart local v0    # "imgsrc":Lorg/appcelerator/titanium/view/TiDrawableReference;
    :cond_2
    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v1

    if-eq v1, p1, :cond_3

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$000(Lti/modules/titanium/ui/widget/TiUIImageView;)Lti/modules/titanium/ui/ImageViewProxy;

    move-result-object v1

    invoke-virtual {v0}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/appcelerator/titanium/util/TiUrl;->getCleanUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/view/TiDrawableReference;->fromUrl(Lorg/appcelerator/kroll/KrollProxy;Ljava/lang/String;)Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->hashCode()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 146
    :cond_3
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v1, p2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$600(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V

    .line 147
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$700(Lti/modules/titanium/ui/widget/TiUIImageView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const-string v2, "image"

    invoke-static {v1, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$800(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {v1, v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$702(Lti/modules/titanium/ui/widget/TiUIImageView;Z)Z

    goto :goto_0
.end method
