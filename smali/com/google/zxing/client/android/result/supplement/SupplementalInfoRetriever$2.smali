.class Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever$2;
.super Ljava/lang/Object;
.source "SupplementalInfoRetriever.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->append(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;

.field final synthetic val$content:Landroid/text/Spannable;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;Landroid/widget/TextView;Landroid/text/Spannable;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever$2;->this$0:Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;

    iput-object p2, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever$2;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever$2;->val$content:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever$2;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever$2;->val$content:Landroid/text/Spannable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever$2;->val$textView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 147
    return-void
.end method
