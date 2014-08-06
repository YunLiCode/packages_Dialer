.class Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialItemClickListener;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSmartDialItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialItemClickListener;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;Lcom/android/dialer/dialpad/DialpadFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/dialpad/DialpadFragment;
    .param p2, "x1"    # Lcom/android/dialer/dialpad/DialpadFragment$1;

    .prologue
    .line 2195
    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialItemClickListener;-><init>(Lcom/android/dialer/dialpad/DialpadFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/16 v3, 0x32

    .line 2199
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/SmartDialEntry;

    .line 2200
    .local v0, "entry":Lcom/android/dialer/dialpad/SmartDialEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/dialer/dialpad/SmartDialEntry;->phoneNumber:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2210
    :cond_0
    :goto_0
    return-void

    .line 2203
    :cond_1
    iget-object v2, v0, Lcom/android/dialer/dialpad/SmartDialEntry;->phoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2204
    .local v1, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 2205
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2207
    :cond_2
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialItemClickListener;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$900(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2208
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialItemClickListener;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->mDigits:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->access$900(Lcom/android/dialer/dialpad/DialpadFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 2209
    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$OnSmartDialItemClickListener;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    const/4 v3, 0x1

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->showDialpad(Z)V
    invoke-static {v2, v3}, Lcom/android/dialer/dialpad/DialpadFragment;->access$1000(Lcom/android/dialer/dialpad/DialpadFragment;Z)V

    goto :goto_0
.end method
