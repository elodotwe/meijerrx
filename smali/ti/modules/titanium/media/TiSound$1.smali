.class Lti/modules/titanium/media/TiSound$1;
.super Ljava/lang/Object;
.source "TiSound.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/media/TiSound;->prepareAndPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/media/TiSound;


# direct methods
.method constructor <init>(Lti/modules/titanium/media/TiSound;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 241
    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 242
    iget-object v0, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    invoke-static {v0, v1}, Lti/modules/titanium/media/TiSound;->access$002(Lti/modules/titanium/media/TiSound;Z)Z

    .line 243
    iget-object v0, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    invoke-static {v0}, Lti/modules/titanium/media/TiSound;->access$100(Lti/modules/titanium/media/TiSound;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    invoke-static {v0}, Lti/modules/titanium/media/TiSound;->access$200(Lti/modules/titanium/media/TiSound;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    invoke-static {v0}, Lti/modules/titanium/media/TiSound;->access$300(Lti/modules/titanium/media/TiSound;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    invoke-static {v0, v1}, Lti/modules/titanium/media/TiSound;->access$202(Lti/modules/titanium/media/TiSound;Z)Z

    .line 247
    iget-object v0, p0, Lti/modules/titanium/media/TiSound$1;->this$0:Lti/modules/titanium/media/TiSound;

    invoke-static {v0, v1}, Lti/modules/titanium/media/TiSound;->access$102(Lti/modules/titanium/media/TiSound;Z)Z

    .line 248
    return-void
.end method
