.class public Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TiUINativePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/picker/TiUINativePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TiSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field fontProperties:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;, "Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter<TT;>;"
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    .local p0, "this":Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;, "Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->fontProperties:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->fontProperties:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->fontProperties:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->fontProperties:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->fontProperties:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    .local p0, "this":Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;, "Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->fontProperties:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->fontProperties:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->fontProperties:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->fontProperties:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    iget-object v4, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->fontProperties:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lorg/appcelerator/titanium/util/TiUIHelper;->styleText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    return-object v0
.end method

.method public setFontProperties(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .param p1, "d"    # Lorg/appcelerator/kroll/KrollDict;

    .prologue
    .line 79
    .local p0, "this":Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;, "Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter<TT;>;"
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiUIHelper;->getFontProperties(Lorg/appcelerator/kroll/KrollDict;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/ui/widget/picker/TiUINativePicker$TiSpinnerAdapter;->fontProperties:[Ljava/lang/String;

    .line 80
    return-void
.end method
