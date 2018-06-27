.class Lcom/crittercism/ti/CrittercismModule$2;
.super Ljava/lang/Object;
.source "CrittercismModule.java"

# interfaces
.implements Lcom/crittercism/app/CritterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crittercism/ti/CrittercismModule;->collectCritterData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crittercism/ti/CrittercismModule;


# direct methods
.method constructor <init>(Lcom/crittercism/ti/CrittercismModule;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/crittercism/ti/CrittercismModule$2;->this$0:Lcom/crittercism/ti/CrittercismModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCritterDataReceived(Lcom/crittercism/app/CritterUserData;)V
    .locals 3
    .param p1, "userData"    # Lcom/crittercism/app/CritterUserData;

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/crittercism/app/CritterUserData;->isOptedOut()Z

    move-result v0

    invoke-static {v0}, Lcom/crittercism/ti/CrittercismModule;->access$102(Z)Z

    .line 255
    invoke-virtual {p1}, Lcom/crittercism/app/CritterUserData;->crashedOnLastLoad()Z

    move-result v0

    invoke-static {v0}, Lcom/crittercism/ti/CrittercismModule;->access$202(Z)Z

    .line 256
    invoke-virtual {p1}, Lcom/crittercism/app/CritterUserData;->getUserUUID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/ti/CrittercismModule;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/crittercism/ti/CrittercismModule$2;->this$0:Lcom/crittercism/ti/CrittercismModule;

    const-string v1, "serviceready"

    invoke-virtual {v0, v1}, Lcom/crittercism/ti/CrittercismModule;->hasListeners(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/crittercism/ti/CrittercismModule$2;->this$0:Lcom/crittercism/ti/CrittercismModule;

    const-string v1, "serviceready"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/crittercism/ti/CrittercismModule;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 261
    :cond_0
    return-void
.end method
