.class public Lti/modules/titanium/ui/android/TiPreferencesActivity;
.super Lorg/appcelerator/titanium/TiActivity;
.source "TiPreferencesActivity.java"


# static fields
.field protected static final DEFAULT_PREFS_RNAME:Ljava/lang/String; = "preferences"

.field protected static final PREFS_KEY:Ljava/lang/String; = "prefsName"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/TiActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const-string v3, "preferences"

    .line 23
    .local v3, "prefsName":Ljava/lang/String;
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "prefsName"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "prefsName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 26
    move-object v3, v2

    .line 30
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    new-instance v1, Lti/modules/titanium/ui/android/TiPreferencesFragment;

    invoke-direct {v1}, Lti/modules/titanium/ui/android/TiPreferencesFragment;-><init>()V

    .line 31
    .local v1, "fragment":Lti/modules/titanium/ui/android/TiPreferencesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "prefsName"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v0}, Lti/modules/titanium/ui/android/TiPreferencesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lti/modules/titanium/ui/android/TiPreferencesActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 40
    return-void
.end method
