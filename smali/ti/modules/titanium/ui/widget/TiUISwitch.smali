.class public Lti/modules/titanium/ui/widget/TiUISwitch;
.super Lorg/appcelerator/titanium/view/TiUIView;
.source "TiUISwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TiUISwitch"


# instance fields
.field private oldValue:Z


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 3
    .param p1, "proxy"    # Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->oldValue:Z

    .line 40
    const-string v0, "TiUISwitch"

    const-string v1, "Creating a switch"

    const-string v2, "DEBUG_MODE"

    invoke-static {v0, v1, v2}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v0, "style"

    const/4 v1, 0x0

    const-string v2, "style"

    invoke-virtual {p1, v2}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p1}, Lti/modules/titanium/ui/widget/TiUISwitch;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/ui/widget/TiUISwitch;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUISwitch;

    .prologue
    .line 31
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$100(Lti/modules/titanium/ui/widget/TiUISwitch;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUISwitch;

    .prologue
    .line 31
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method

.method static synthetic access$200(Lti/modules/titanium/ui/widget/TiUISwitch;)Lorg/appcelerator/titanium/proxy/TiViewProxy;
    .locals 1
    .param p0, "x0"    # Lti/modules/titanium/ui/widget/TiUISwitch;

    .prologue
    .line 31
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "btn"    # Landroid/widget/CompoundButton;
    .param p2, "value"    # Z

    .prologue
    .line 189
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 191
    .local v0, "data":Lorg/appcelerator/kroll/KrollDict;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    const-string v2, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->oldValue:Z

    if-eq v1, p2, :cond_0

    .line 194
    const-string v1, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "change"

    invoke-virtual {p0, v1, v0}, Lti/modules/titanium/ui/widget/TiUISwitch;->fireEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)Z

    .line 196
    iput-boolean p2, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->oldValue:Z

    .line 198
    :cond_0
    return-void
.end method

.method public processProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiUIView;->processProperties(Lorg/appcelerator/kroll/KrollDict;)V

    .line 50
    const-string v1, "style"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "style"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUISwitch;->setStyle(I)V

    .line 54
    :cond_0
    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "value"

    invoke-static {p1, v1}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->oldValue:Z

    .line 58
    :cond_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISwitch;->getNativeView()Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "nativeView":Landroid/view/View;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 60
    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {p0, v1, p1}, Lti/modules/titanium/ui/widget/TiUISwitch;->updateShape(Landroid/widget/CompoundButton;Lorg/appcelerator/kroll/KrollDict;)V

    .line 61
    check-cast v0, Landroid/widget/CompoundButton;

    .end local v0    # "nativeView":Landroid/view/View;
    invoke-virtual {p0, v0, p1}, Lti/modules/titanium/ui/widget/TiUISwitch;->updateButton(Landroid/widget/CompoundButton;Lorg/appcelerator/kroll/KrollDict;)V

    .line 63
    :cond_2
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "oldValue"    # Ljava/lang/Object;
    .param p3, "newValue"    # Ljava/lang/Object;
    .param p4, "proxy"    # Lorg/appcelerator/kroll/KrollProxy;

    .prologue
    const/4 v4, 0x0

    .line 147
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "TiUISwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEBUG_MODE"

    invoke-static {v1, v2, v3}, Lorg/appcelerator/kroll/common/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISwitch;->getNativeView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 152
    .local v0, "cb":Landroid/widget/CompoundButton;
    const-string v1, "style"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    .line 153
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiUISwitch;->setStyle(I)V

    .line 185
    .end local v0    # "cb":Landroid/widget/CompoundButton;
    .end local p3    # "newValue":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 154
    .restart local v0    # "cb":Landroid/widget/CompoundButton;
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string v1, "title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    .line 155
    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 156
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v1, "titleOff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 157
    instance-of v1, v0, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_4

    .line 158
    check-cast v0, Landroid/widget/ToggleButton;

    .end local v0    # "cb":Landroid/widget/CompoundButton;
    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    .restart local v0    # "cb":Landroid/widget/CompoundButton;
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_4
    instance-of v1, v0, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v1, :cond_1

    .line 160
    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .end local v0    # "cb":Landroid/widget/CompoundButton;
    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 163
    .restart local v0    # "cb":Landroid/widget/CompoundButton;
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v1, "titleOn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 164
    instance-of v1, v0, Landroid/widget/ToggleButton;

    if-eqz v1, :cond_6

    .line 165
    check-cast v0, Landroid/widget/ToggleButton;

    .end local v0    # "cb":Landroid/widget/CompoundButton;
    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    .restart local v0    # "cb":Landroid/widget/CompoundButton;
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_6
    instance-of v1, v0, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v1, :cond_1

    .line 167
    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .end local v0    # "cb":Landroid/widget/CompoundButton;
    check-cast p3, Ljava/lang/String;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    .restart local v0    # "cb":Landroid/widget/CompoundButton;
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_7
    const-string v1, "value"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 171
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 172
    :cond_8
    const-string v1, "color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 173
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setTextColor(I)V

    goto :goto_0

    .line 174
    :cond_9
    const-string v1, "font"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 175
    check-cast p3, Lorg/appcelerator/kroll/KrollDict;

    .end local p3    # "newValue":Ljava/lang/Object;
    invoke-static {v0, p3}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 176
    .restart local p3    # "newValue":Ljava/lang/Object;
    :cond_a
    const-string v1, "textAlign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 177
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->requestLayout()V

    goto/16 :goto_0

    .line 179
    :cond_b
    const-string v1, "verticalAlign"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 180
    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->requestLayout()V

    goto/16 :goto_0

    .line 183
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Lorg/appcelerator/titanium/view/TiUIView;->propertyChanged(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lorg/appcelerator/kroll/KrollProxy;)V

    goto/16 :goto_0
.end method

.method protected setStyle(I)V
    .locals 6
    .param p1, "style"    # I

    .prologue
    const/4 v5, 0x0

    .line 202
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiUISwitch;->getNativeView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CompoundButton;

    .line 203
    .local v2, "currentButton":Landroid/widget/CompoundButton;
    const/4 v0, 0x0

    .line 205
    .local v0, "button":Landroid/widget/CompoundButton;
    packed-switch p1, :pswitch_data_0

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 207
    :pswitch_0
    instance-of v4, v2, Landroid/widget/CheckBox;

    if-nez v4, :cond_1

    .line 210
    :try_start_0
    const-string v4, "layout.titanium_ui_checkbox"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 217
    .local v1, "buttonId":I
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/CompoundButton;
    check-cast v0, Landroid/widget/CheckBox;

    .line 219
    .restart local v0    # "button":Landroid/widget/CompoundButton;
    new-instance v4, Lti/modules/titanium/ui/widget/TiUISwitch$1;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/TiUISwitch$1;-><init>(Lti/modules/titanium/ui/widget/TiUISwitch;)V

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 274
    .end local v1    # "buttonId":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiUISwitch;->setNativeView(Landroid/view/View;)V

    .line 276
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lti/modules/titanium/ui/widget/TiUISwitch;->updateShape(Landroid/widget/CompoundButton;Lorg/appcelerator/kroll/KrollDict;)V

    .line 277
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperties()Lorg/appcelerator/kroll/KrollDict;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lti/modules/titanium/ui/widget/TiUISwitch;->updateButton(Landroid/widget/CompoundButton;Lorg/appcelerator/kroll/KrollDict;)V

    .line 278
    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 211
    :catch_0
    move-exception v3

    .line 212
    .local v3, "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    const-string v4, "TiUISwitch"

    const-string v5, "XML resources could not be found!!!"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    .end local v3    # "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    :pswitch_1
    instance-of v4, v2, Landroid/widget/ToggleButton;

    if-nez v4, :cond_1

    .line 233
    new-instance v0, Lti/modules/titanium/ui/widget/TiUISwitch$2;

    .end local v0    # "button":Landroid/widget/CompoundButton;
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUISwitch;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-virtual {v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lti/modules/titanium/ui/widget/TiUISwitch$2;-><init>(Lti/modules/titanium/ui/widget/TiUISwitch;Landroid/content/Context;)V

    .restart local v0    # "button":Landroid/widget/CompoundButton;
    goto :goto_1

    .line 246
    :pswitch_2
    instance-of v4, v2, Landroid/support/v7/widget/SwitchCompat;

    if-nez v4, :cond_1

    .line 249
    :try_start_1
    const-string v4, "layout.titanium_ui_switchcompat"

    invoke-static {v4}, Lorg/appcelerator/titanium/util/TiRHelper;->getResource(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 256
    .restart local v1    # "buttonId":I
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getAppCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/CompoundButton;
    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    .line 258
    .restart local v0    # "button":Landroid/widget/CompoundButton;
    new-instance v4, Lti/modules/titanium/ui/widget/TiUISwitch$3;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/TiUISwitch$3;-><init>(Lti/modules/titanium/ui/widget/TiUISwitch;)V

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_1

    .line 250
    .end local v1    # "buttonId":I
    :catch_1
    move-exception v3

    .line 251
    .restart local v3    # "e":Lorg/appcelerator/titanium/util/TiRHelper$ResourceNotFoundException;
    invoke-static {}, Lorg/appcelerator/kroll/common/Log;->isDebugModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    const-string v4, "TiUISwitch"

    const-string v5, "XML resources could not be found!!!"

    invoke-static {v4, v5}, Lorg/appcelerator/kroll/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected updateButton(Landroid/widget/CompoundButton;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 5
    .param p1, "cb"    # Landroid/widget/CompoundButton;
    .param p2, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    const/4 v4, 0x0

    .line 104
    const-string v2, "title"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "title"

    invoke-static {p2, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    const-string v2, "titleOff"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    instance-of v2, p1, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_8

    move-object v2, p1

    .line 109
    check-cast v2, Landroid/widget/ToggleButton;

    const-string v3, "titleOff"

    invoke-static {p2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 115
    :cond_1
    :goto_0
    const-string v2, "titleOn"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    instance-of v2, p1, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_9

    move-object v2, p1

    .line 117
    check-cast v2, Landroid/widget/ToggleButton;

    const-string v3, "titleOn"

    invoke-static {p2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 122
    :cond_2
    :goto_1
    const-string v2, "value"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 124
    const-string v2, "value"

    invoke-static {p2, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toBoolean(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 126
    :cond_3
    const-string v2, "color"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    const-string v2, "color"

    invoke-static {p2, v2}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setTextColor(I)V

    .line 129
    :cond_4
    const-string v2, "font"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 130
    const-string v2, "font"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->getKrollDict(Ljava/lang/String;)Lorg/appcelerator/kroll/KrollDict;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/util/HashMap;)V

    .line 132
    :cond_5
    const-string v2, "textAlign"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 133
    const-string v2, "textAlign"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "textAlign":Ljava/lang/String;
    invoke-static {p1, v0, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v0    # "textAlign":Ljava/lang/String;
    :cond_6
    const-string v2, "verticalAlign"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 137
    const-string v2, "verticalAlign"

    invoke-virtual {p2, v2}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "verticalAlign":Ljava/lang/String;
    invoke-static {p1, v4, v1}, Lorg/appcelerator/titanium/util/TiUIHelper;->setAlignment(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v1    # "verticalAlign":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->invalidate()V

    .line 141
    return-void

    .line 110
    :cond_8
    instance-of v2, p1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 111
    check-cast v2, Landroid/support/v7/widget/SwitchCompat;

    const-string v3, "titleOff"

    invoke-static {p2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setTextOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 118
    :cond_9
    instance-of v2, p1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 119
    check-cast v2, Landroid/support/v7/widget/SwitchCompat;

    const-string v3, "titleOn"

    invoke-static {p2, v3}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setTextOn(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected updateShape(Landroid/widget/CompoundButton;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 11
    .param p1, "cb"    # Landroid/widget/CompoundButton;
    .param p2, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 67
    instance-of v8, p1, Landroid/support/v7/widget/SwitchCompat;

    if-eqz v8, :cond_5

    .line 69
    :try_start_0
    const-string v8, "trackShape"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 70
    new-instance v7, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 71
    .local v7, "track":Landroid/graphics/drawable/StateListDrawable;
    const-string v8, "trackShape"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    .line 72
    .local v6, "trDrawableOn":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "trackTintColorOn"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 73
    const-string v8, "trackTintColorOn"

    invoke-static {p2, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 75
    :cond_0
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10100a0

    aput v10, v8, v9

    invoke-virtual {v7, v8, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 76
    const-string v8, "trackShape"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 77
    .local v5, "trDrawableOff":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "trackTintColorOff"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 78
    const-string v8, "trackTintColorOff"

    invoke-static {p2, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 80
    :cond_1
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, -0x10100a0

    aput v10, v8, v9

    invoke-virtual {v7, v8, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 81
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    move-object v8, v0

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .end local v5    # "trDrawableOff":Landroid/graphics/drawable/GradientDrawable;
    .end local v6    # "trDrawableOn":Landroid/graphics/drawable/GradientDrawable;
    .end local v7    # "track":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    const-string v8, "thumbShape"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 84
    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 85
    .local v4, "thumb":Landroid/graphics/drawable/StateListDrawable;
    const-string v8, "thumbShape"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 86
    .local v3, "thDrawableOn":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "thumbTintColorOn"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 87
    const-string v8, "thumbTintColorOn"

    invoke-static {p2, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 89
    :cond_3
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10100a0

    aput v10, v8, v9

    invoke-virtual {v4, v8, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 90
    const-string v8, "thumbShape"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;I)I

    move-result v8

    invoke-static {v8}, Lorg/appcelerator/titanium/util/TiUIHelper;->getResourceDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 91
    .local v2, "thDrawableOff":Landroid/graphics/drawable/GradientDrawable;
    const-string v8, "thumbTintColorOff"

    invoke-virtual {p2, v8}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 92
    const-string v8, "thumbTintColorOff"

    invoke-static {p2, v8}, Lorg/appcelerator/titanium/util/TiConvert;->toColor(Ljava/util/HashMap;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 94
    :cond_4
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, -0x10100a0

    aput v10, v8, v9

    invoke-virtual {v4, v8, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 95
    check-cast p1, Landroid/support/v7/widget/SwitchCompat;

    .end local p1    # "cb":Landroid/widget/CompoundButton;
    invoke-virtual {p1, v4}, Landroid/support/v7/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v2    # "thDrawableOff":Landroid/graphics/drawable/GradientDrawable;
    .end local v3    # "thDrawableOn":Landroid/graphics/drawable/GradientDrawable;
    .end local v4    # "thumb":Landroid/graphics/drawable/StateListDrawable;
    :cond_5
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "TiUISwitch"

    const-string v9, "Cannot find the shape drawable"

    invoke-static {v8, v9}, Lorg/appcelerator/kroll/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
