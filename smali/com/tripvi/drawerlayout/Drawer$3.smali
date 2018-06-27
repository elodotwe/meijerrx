.class Lcom/tripvi/drawerlayout/Drawer$3;
.super Ljava/lang/Object;
.source "Drawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tripvi/drawerlayout/Drawer;->initDrawerToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tripvi/drawerlayout/Drawer;


# direct methods
.method constructor <init>(Lcom/tripvi/drawerlayout/Drawer;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/tripvi/drawerlayout/Drawer$3;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/tripvi/drawerlayout/Drawer$3;->this$0:Lcom/tripvi/drawerlayout/Drawer;

    invoke-static {v0}, Lcom/tripvi/drawerlayout/Drawer;->access$2800(Lcom/tripvi/drawerlayout/Drawer;)Landroid/support/v4/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 365
    return-void
.end method
