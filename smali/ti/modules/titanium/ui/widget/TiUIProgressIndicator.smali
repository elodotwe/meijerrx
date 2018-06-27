.class public Lti/modules/titanium/ui/widget/TiUIProgressIndicator;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUIProgressIndicator.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final DETERMINANT:I = 0x1

.field public static final DIALOG:I = 0x1

.field public static final INDETERMINANT:I = 0x0

.field private static final MSG_HIDE:I = 0x66

.field private static final MSG_PROGRESS:I = 0x65

.field private static final MSG_SHOW:I = 0x64

.field public static final STATUS_BAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TiUIProgressDialog"


# instance fields
.field protected handler:Landroid/os/Handler;

.field protected incrementFactor:I

.field protected location:I

.field protected max:I

.field protected min:I

.field protected progressDialog:Landroid/app/ProgressDialog;

.field protected statusBarTitle:Ljava/lang/String;

.field protected type:I

.field protected visible:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 65
    const-string v0, "TiUIProgressDialog"

    const-string v1, "Creating an progress indicator"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->handler:Landroid/os/Handler;

    .line 67
    return-void
.end method


# virtual methods
.method public buildMessage()Landroid/text/SpannableStringBuilder;
    .locals 9

    .prologue
    const/16 v8, 0x21

    const/4 v7, 0x0

    .line 139
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v0

    .line 140
    .local v0, "d":Lorg/appcelerator/kroll/KrollDict;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v4, "message"

    invoke-static {v0, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 141
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    const-string v4, "color"

    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "color"

    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v6, 0x12

    invoke-virtual {v2, v5, v7, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 147
    :cond_0
    const-string v4, "font"

    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 148
    const-string v4, "font"

    invoke-virtual {v0, v4}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 149
    .local v1, "font":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "fontFamily"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    new-instance v4, Lorg/appcelerator/titanium/util/TypefaceSpan;

    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v5

    const-string v6, "fontFamily"

    invoke-static {v1, v6}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/appcelerator/titanium/util/TypefaceSpan;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v7, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 152
    :cond_1
    const-string v4, "fontSize"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const-string v5, "fontSize"

    invoke-static {v1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v6}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/TiUIHelper;->getRawSize(Ljava/lang/String;Landroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v4, v5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v7, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 155
    :cond_2
    const-string v4, "fontWeight"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 156
    const-string v4, "fontWeight"

    invoke-static {v1, v4}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fontStyle"

    invoke-static {v1, v5}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/TiUIHelper;->toTypefaceStyle(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 157
    .local v3, "typefaceStyle":I
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v4, v7, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 161
    .end local v1    # "font":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "typefaceStyle":I
    :cond_3
    return-object v2
.end method

.method protected handleHide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 274
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_1

    .line 275
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 276
    .local v0, "ownerActivity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 277
    check-cast v0, Lorg/appcelerator/titanium/TiBaseActivity;

    .end local v0    # "ownerActivity":Landroid/app/Activity;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Lorg/appcelerator/titanium/TiBaseActivity;->removeDialog(Landroid/app/Dialog;)V

    .line 278
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 280
    :cond_0
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    .line 289
    :goto_0
    iput-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    .line 290
    return-void

    .line 282
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 283
    .local v1, "parent":Landroid/app/Activity;
    invoke-virtual {v1, v3}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 284
    invoke-virtual {v1, v3}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 285
    invoke-virtual {v1, v3}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 286
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->statusBarTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->statusBarTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 71
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 91
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 73
    :pswitch_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->handleShow()V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 81
    .local v0, "parent":Landroid/app/Activity;
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgress(I)V

    goto :goto_0

    .line 86
    .end local v0    # "parent":Landroid/app/Activity;
    :pswitch_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->handleHide()V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected handleShow()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 185
    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->location:I

    .line 186
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->location:I

    .line 190
    :cond_0
    iput v7, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->min:I

    .line 191
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "min"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "min"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->min:I

    .line 195
    :cond_1
    const/16 v3, 0x64

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->max:I

    .line 196
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "max"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "max"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->max:I

    .line 200
    :cond_2
    iput v7, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    .line 201
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v3

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    .line 205
    :cond_3
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->location:I

    if-nez v3, :cond_6

    .line 206
    const/16 v3, 0x2710

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->max:I

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->min:I

    sub-int/2addr v4, v5

    div-int/2addr v3, v4

    iput v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->incrementFactor:I

    .line 207
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 209
    .local v2, "parent":Landroid/app/Activity;
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    if-nez v3, :cond_4

    .line 210
    invoke-virtual {v2, v6}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 211
    invoke-virtual {v2, v6}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 212
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->statusBarTitle:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->buildMessage()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    .end local v2    # "parent":Landroid/app/Activity;
    :goto_0
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    .line 263
    return-void

    .line 214
    .restart local v2    # "parent":Landroid/app/Activity;
    :cond_4
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    if-ne v3, v6, :cond_5

    .line 215
    invoke-virtual {v2, v7}, Landroid/app/Activity;->setProgressBarIndeterminate(Z)V

    .line 216
    invoke-virtual {v2, v7}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 217
    invoke-virtual {v2, v6}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 218
    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->statusBarTitle:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->buildMessage()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    :cond_5
    const-string v3, "TiUIProgressDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .end local v2    # "parent":Landroid/app/Activity;
    :cond_6
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->location:I

    if-ne v3, v6, :cond_d

    .line 224
    iput v6, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->incrementFactor:I

    .line 225
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v3, :cond_9

    .line 226
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 227
    .local v0, "a":Landroid/app/Activity;
    if-nez v0, :cond_7

    .line 228
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    .line 230
    :cond_7
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    .line 231
    instance-of v3, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v3, :cond_8

    move-object v1, v0

    .line 232
    check-cast v1, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 233
    .local v1, "baseActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    new-instance v3, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v1, v4, v6, v5}, Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;-><init>(Lorg/appcelerator/titanium/TiBaseActivity;Landroid/app/Dialog;ZLjava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v3}, Lorg/appcelerator/titanium/TiBaseActivity;->addDialog(Lorg/appcelerator/titanium/TiBaseActivity$DialogWrapper;)V

    .line 234
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 236
    .end local v1    # "baseActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    :cond_8
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 239
    .end local v0    # "a":Landroid/app/Activity;
    :cond_9
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->buildMessage()Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    const-string v5, "canceledOnTouchOutside"

    invoke-virtual {v4, v5, v7}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 242
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    const-string v5, "cancelable"

    invoke-virtual {v4, v5, v7}, Lorg/appcelerator/kroll/KrollDict;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 244
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    if-nez v3, :cond_a

    .line 245
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 258
    :goto_1
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 246
    :cond_a
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    if-ne v3, v6, :cond_c

    .line 247
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 248
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 249
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->min:I

    if-eqz v3, :cond_b

    .line 250
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->max:I

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->min:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 254
    :goto_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_1

    .line 252
    :cond_b
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->max:I

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    goto :goto_2

    .line 256
    :cond_c
    const-string v3, "TiUIProgressDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 260
    :cond_d
    const-string v3, "TiUIProgressDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->location:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public hide(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 267
    iget-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    if-nez v0, :cond_0

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->handler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    .line 295
    const-string v0, "cancel"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 296
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 100
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    .line 105
    const-string v3, "TiUIProgressDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " old: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEBUG_MODE"

    invoke-static {v3, v4, v5}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v3, "message"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "color"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "font"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    :cond_0
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_2

    .line 110
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->buildMessage()Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 114
    .local v0, "parent":Landroid/app/Activity;
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->buildMessage()Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    .end local v0    # "parent":Landroid/app/Activity;
    :cond_3
    const-string v3, "value"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    if-eqz v3, :cond_1

    .line 120
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v2

    .line 121
    .local v2, "value":I
    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->min:I

    sub-int v3, v2, v3

    iget v4, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->incrementFactor:I

    mul-int v1, v3, v4

    .line 123
    .local v1, "thePos":I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->handler:Landroid/os/Handler;

    const/16 v4, 0x65

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 126
    .end local v1    # "thePos":I
    .end local v2    # "value":I
    :cond_4
    const-string v3, "cancelable"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 127
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    .line 128
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 131
    :cond_5
    const-string v3, "canceledOnTouchOutside"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_6

    .line 132
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->progressDialog:Landroid/app/ProgressDialog;

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 134
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto :goto_0
.end method

.method public show(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .param p1, "options"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 166
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->visible:Z

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->isRootActivityAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 173
    .local v0, "currentActivity":Landroid/app/Activity;
    instance-of v1, v0, Lorg/appcelerator/titanium/TiLaunchActivity;

    if-eqz v1, :cond_2

    .line 174
    check-cast v0, Lorg/appcelerator/titanium/TiLaunchActivity;

    .end local v0    # "currentActivity":Landroid/app/Activity;
    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiLaunchActivity;->isJSActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    :cond_2
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUIProgressIndicator;->handleShow()V

    goto :goto_0
.end method
