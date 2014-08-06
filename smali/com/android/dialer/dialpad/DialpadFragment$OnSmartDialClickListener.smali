.class Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialClickListener;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSmartDialClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 2222
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialClickListener;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;Lcom/android/dialer/dialpad/DialpadFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p2, "x1"    # Lcom/android/dialer/dialpad/DialpadFragment$1;

    .prologue
    .line 2222
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialClickListener;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2226
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialClickListener;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$900(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2227
    .local v0, "digits":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialClickListener;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->getAddToContactIntent(Ljava/lang/CharSequence;)Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1100(Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 2228
    return-void
.end method
