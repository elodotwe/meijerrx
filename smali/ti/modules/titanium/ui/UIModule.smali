.class public Lti/modules/titanium/ui/UIModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "UIModule.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final ATTRIBUTE_BACKGROUND_COLOR:I = 0x2

.field public static final ATTRIBUTE_FONT:I = 0x0

.field public static final ATTRIBUTE_FOREGROUND_COLOR:I = 0x1

.field public static final ATTRIBUTE_LINK:I = 0x5

.field public static final ATTRIBUTE_STRIKETHROUGH_STYLE:I = 0x3

.field public static final ATTRIBUTE_UNDERLINES_STYLE:I = 0x4

.field public static final ATTRIBUTE_UNDERLINE_COLOR:I = 0x6

.field public static final AUTOLINK_ALL:I = 0xf

.field public static final AUTOLINK_EMAIL_ADDRESSES:I = 0x2

.field public static final AUTOLINK_MAP_ADDRESSES:I = 0x8

.field public static final AUTOLINK_NONE:I = 0x10

.field public static final AUTOLINK_PHONE_NUMBERS:I = 0x4

.field public static final AUTOLINK_URLS:I = 0x1

.field public static final FACE_DOWN:I = 0x6

.field public static final FACE_UP:I = 0x5

.field public static final FILL:Ljava/lang/String; = "fill"

.field public static final INPUT_BORDERSTYLE_BEZEL:I = 0x2

.field public static final INPUT_BORDERSTYLE_LINE:I = 0x3

.field public static final INPUT_BORDERSTYLE_NONE:I = 0x0

.field public static final INPUT_BORDERSTYLE_ROUNDED:I = 0x1

.field public static final INPUT_BUTTONMODE_ALWAYS:I = 0x1

.field public static final INPUT_BUTTONMODE_NEVER:I = 0x2

.field public static final INPUT_BUTTONMODE_ONFOCUS:I = 0x0

.field public static final KEYBOARD_APPEARANCE_ALERT:I = -0x1

.field public static final KEYBOARD_APPEARANCE_DEFAULT:I = -0x1

.field public static final KEYBOARD_ASCII:I = 0x0

.field public static final KEYBOARD_DECIMAL_PAD:I = 0x8

.field public static final KEYBOARD_DEFAULT:I = 0x7

.field public static final KEYBOARD_EMAIL:I = 0x5

.field public static final KEYBOARD_NAMEPHONE_PAD:I = 0x6

.field public static final KEYBOARD_NUMBERS_PUNCTUATION:I = 0x1

.field public static final KEYBOARD_NUMBER_PAD:I = 0x3

.field public static final KEYBOARD_PHONE_PAD:I = 0x4

.field public static final KEYBOARD_URL:I = 0x2

.field public static final LANDSCAPE_LEFT:I = 0x2

.field public static final LANDSCAPE_RIGHT:I = 0x4

.field public static final LIST_ACCESSORY_TYPE_CHECKMARK:I = 0x1

.field public static final LIST_ACCESSORY_TYPE_DETAIL:I = 0x2

.field public static final LIST_ACCESSORY_TYPE_DISCLOSURE:I = 0x3

.field public static final LIST_ACCESSORY_TYPE_NONE:I = 0x0

.field public static final LIST_ITEM_TEMPLATE_DEFAULT:Ljava/lang/String; = "listDefaultTemplate"

.field public static final MAP_VIEW_HYBRID:I = 0x3

.field public static final MAP_VIEW_SATELLITE:I = 0x2

.field public static final MAP_VIEW_STANDARD:I = 0x1

.field protected static final MSG_LAST_ID:I = 0x138

.field protected static final MSG_SET_BACKGROUND_COLOR:I = 0x137

.field protected static final MSG_SET_BACKGROUND_IMAGE:I = 0x138

.field public static final NOTIFICATION_DURATION_LONG:I = 0x1

.field public static final NOTIFICATION_DURATION_SHORT:I = 0x0

.field public static final PICKER_TYPE_COUNT_DOWN_TIMER:I = 0x3

.field public static final PICKER_TYPE_DATE:I = 0x1

.field public static final PICKER_TYPE_DATE_AND_TIME:I = 0x2

.field public static final PICKER_TYPE_PLAIN:I = -0x1

.field public static final PICKER_TYPE_TIME:I = 0x0

.field public static final PORTRAIT:I = 0x1

.field public static final RETURNKEY_DEFAULT:I = 0x9

.field public static final RETURNKEY_DONE:I = 0x7

.field public static final RETURNKEY_EMERGENCY_CALL:I = 0x8

.field public static final RETURNKEY_GO:I = 0x0

.field public static final RETURNKEY_GOOGLE:I = 0x1

.field public static final RETURNKEY_JOIN:I = 0x2

.field public static final RETURNKEY_NEXT:I = 0x3

.field public static final RETURNKEY_ROUTE:I = 0x4

.field public static final RETURNKEY_SEARCH:I = 0x5

.field public static final RETURNKEY_SEND:I = 0xa

.field public static final RETURNKEY_YAHOO:I = 0x6

.field public static final SIZE:Ljava/lang/String; = "size"

.field public static final TABLEVIEW_POSITION_ANY:I = 0x0

.field public static final TABLEVIEW_POSITION_BOTTOM:I = 0x3

.field public static final TABLEVIEW_POSITION_MIDDLE:I = 0x2

.field public static final TABLEVIEW_POSITION_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TiUIModule"

.field public static final TEXT_ALIGNMENT_CENTER:Ljava/lang/String; = "center"

.field public static final TEXT_ALIGNMENT_LEFT:Ljava/lang/String; = "left"

.field public static final TEXT_ALIGNMENT_RIGHT:Ljava/lang/String; = "right"

.field public static final TEXT_AUTOCAPITALIZATION_ALL:I = 0x3

.field public static final TEXT_AUTOCAPITALIZATION_NONE:I = 0x0

.field public static final TEXT_AUTOCAPITALIZATION_SENTENCES:I = 0x1

.field public static final TEXT_AUTOCAPITALIZATION_WORDS:I = 0x2

.field public static final TEXT_ELLIPSIZE_TRUNCATE_END:I = 0x2

.field public static final TEXT_ELLIPSIZE_TRUNCATE_MARQUEE:I = 0x3

.field public static final TEXT_ELLIPSIZE_TRUNCATE_MIDDLE:I = 0x1

.field public static final TEXT_ELLIPSIZE_TRUNCATE_START:I = 0x0

.field public static final TEXT_VERTICAL_ALIGNMENT_BOTTOM:Ljava/lang/String; = "bottom"

.field public static final TEXT_VERTICAL_ALIGNMENT_CENTER:Ljava/lang/String; = "middle"

.field public static final TEXT_VERTICAL_ALIGNMENT_TOP:Ljava/lang/String; = "top"

.field public static final UNIT_CM:Ljava/lang/String; = "cm"

.field public static final UNIT_DIP:Ljava/lang/String; = "dip"

.field public static final UNIT_IN:Ljava/lang/String; = "in"

.field public static final UNIT_MM:Ljava/lang/String; = "mm"

.field public static final UNIT_PX:Ljava/lang/String; = "px"

.field public static final UNKNOWN:I = 0x0

.field public static final UPSIDE_PORTRAIT:I = 0x3

.field public static final URL_ERROR_AUTHENTICATION:I = -0x4

.field public static final URL_ERROR_BAD_URL:I = -0xc

.field public static final URL_ERROR_CONNECT:I = -0x6

.field public static final URL_ERROR_FILE:I = -0xd

.field public static final URL_ERROR_FILE_NOT_FOUND:I = -0xe

.field public static final URL_ERROR_HOST_LOOKUP:I = -0x2

.field public static final URL_ERROR_REDIRECT_LOOP:I = -0x9

.field public static final URL_ERROR_SSL_FAILED:I = -0xb

.field public static final URL_ERROR_TIMEOUT:I = -0x8

.field public static final URL_ERROR_UNKNOWN:I = -0x1

.field public static final URL_ERROR_UNSUPPORTED_SCHEME:I = -0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModule;-><init>()V

    .line 170
    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .param p1, "tiContext"    # Lorg/appcelerator/titanium/TiContext;

    .prologue
    .line 174
    invoke-direct {p0}, Lti/modules/titanium/ui/UIModule;-><init>()V

    .line 175
    return-void
.end method


# virtual methods
.method public convertUnits(Ljava/lang/String;Ljava/lang/String;)D
    .locals 5
    .param p1, "convertFromValue"    # Ljava/lang/String;
    .param p2, "convertToUnits"    # Ljava/lang/String;

    .prologue
    .line 233
    const-wide/16 v2, 0x0

    .line 234
    .local v2, "result":D
    new-instance v0, Lorg/appcelerator/titanium/TiDimension;

    const/4 v4, -0x1

    invoke-direct {v0, p1, v4}, Lorg/appcelerator/titanium/TiDimension;-><init>(Ljava/lang/String;I)V

    .line 237
    .local v0, "dimension":Lorg/appcelerator/titanium/TiDimension;
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 239
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 240
    const-string v4, "px"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsPixels(Landroid/view/View;)I

    move-result v4

    int-to-double v2, v4

    .line 253
    :cond_0
    :goto_0
    return-wide v2

    .line 242
    :cond_1
    const-string v4, "mm"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 243
    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsMillimeters(Landroid/view/View;)D

    move-result-wide v2

    goto :goto_0

    .line 244
    :cond_2
    const-string v4, "cm"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 245
    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsCentimeters(Landroid/view/View;)D

    move-result-wide v2

    goto :goto_0

    .line 246
    :cond_3
    const-string v4, "in"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 247
    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsInches(Landroid/view/View;)D

    move-result-wide v2

    goto :goto_0

    .line 248
    :cond_4
    const-string v4, "dip"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiDimension;->getAsDIP(Landroid/view/View;)I

    move-result v4

    int-to-double v2, v4

    goto :goto_0
.end method

.method protected doSetBackgroundColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v1

    invoke-virtual {v1}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    .line 192
    .local v0, "root":Lorg/appcelerator/titanium/TiRootActivity;
    if-eqz v0, :cond_0

    .line 193
    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiColorHelper;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiRootActivity;->setBackgroundColor(I)V

    .line 195
    :cond_0
    return-void

    .line 193
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected doSetBackgroundImage(Ljava/lang/Object;)V
    .locals 5
    .param p1, "image"    # Ljava/lang/Object;

    .prologue
    .line 211
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiApplication;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v2

    .line 212
    .local v2, "root":Lorg/appcelerator/titanium/TiRootActivity;
    if-eqz v2, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 215
    .local v1, "imageDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 217
    :try_start_0
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "image":Ljava/lang/Object;
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 225
    :goto_0
    invoke-virtual {v2, v1}, Lorg/appcelerator/titanium/TiRootActivity;->setBackgroundImage(Landroid/graphics/drawable/Drawable;)V

    .line 227
    .end local v1    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 218
    .restart local v1    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "TiUIModule"

    const-string v4, "Unable to set background drawable for root window.  An integer id was provided but no such drawable resource exists."

    invoke-static {v3, v4}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local p1    # "image":Ljava/lang/Object;
    :cond_1
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected doSetOrientation(I)V
    .locals 6
    .param p1, "tiOrientationMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 258
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v4

    invoke-virtual {v4}, Lorg/appcelerator/titanium/TiApplication;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 259
    .local v0, "activity":Landroid/app/Activity;
    instance-of v4, v0, Lorg/appcelerator/titanium/TiBaseActivity;

    if-eqz v4, :cond_0

    .line 263
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 265
    new-array v1, v5, [I

    .local v1, "orientationModes":[I
    :goto_0
    move-object v2, v0

    .line 273
    check-cast v2, Lorg/appcelerator/titanium/TiBaseActivity;

    .line 274
    .local v2, "tiBaseActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiBaseActivity;->getWindowProxy()Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    move-result-object v3

    .line 276
    .local v3, "windowProxy":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    if-nez v3, :cond_3

    .line 278
    iget-object v4, v2, Lorg/appcelerator/titanium/TiBaseActivity;->lwWindow:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    if-eqz v4, :cond_2

    .line 280
    iget-object v4, v2, Lorg/appcelerator/titanium/TiBaseActivity;->lwWindow:Lorg/appcelerator/titanium/proxy/TiWindowProxy;

    invoke-virtual {v4, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setOrientationModes([I)V

    .line 292
    .end local v1    # "orientationModes":[I
    .end local v2    # "tiBaseActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    .end local v3    # "windowProxy":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    :cond_0
    :goto_1
    return-void

    .line 269
    :cond_1
    const/4 v4, 0x1

    new-array v1, v4, [I

    aput p1, v1, v5

    .restart local v1    # "orientationModes":[I
    goto :goto_0

    .line 284
    .restart local v2    # "tiBaseActivity":Lorg/appcelerator/titanium/TiBaseActivity;
    .restart local v3    # "windowProxy":Lorg/appcelerator/titanium/proxy/TiWindowProxy;
    :cond_2
    const-string v4, "TiUIModule"

    const-string v5, "No window has been associated with activity, unable to set orientation"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 289
    :cond_3
    invoke-virtual {v3, v1}, Lorg/appcelerator/titanium/proxy/TiWindowProxy;->setOrientationModes([I)V

    goto :goto_1
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    const-string v0, "Ti.UI"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 296
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 309
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 298
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/UIModule;->doSetBackgroundColor(Ljava/lang/String;)V

    move v0, v1

    .line 300
    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/UIModule;->doSetBackgroundImage(Ljava/lang/Object;)V

    move v0, v1

    .line 305
    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x137
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/UIModule;->doSetBackgroundColor(Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/UIModule;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x137

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setBackgroundImage(Ljava/lang/Object;)V
    .locals 3
    .param p1, "image"    # Ljava/lang/Object;

    .prologue
    .line 200
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->isUIThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/UIModule;->doSetBackgroundImage(Ljava/lang/Object;)V

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/UIModule;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x138

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
