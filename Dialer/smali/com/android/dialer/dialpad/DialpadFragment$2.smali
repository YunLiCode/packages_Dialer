.class Lcom/android/dialer/dialpad/DialpadFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 699
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 702
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 704
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V
    invoke-static {v3}, Lcom/android/dialer/dialpad/DialpadFragment;->access$500(Lcom/android/dialer/dialpad/DialpadFragment;)V

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 706
    const-string v3, "subscription"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 707
    .local v2, "sub":I
    invoke-static {v2}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getSimState(I)I

    move-result v1

    .line 708
    .local v1, "state":I
    const/4 v3, 0x5

    if-ne v3, v1, :cond_0

    .line 709
    iget-object v3, p0, Lcom/android/dialer/dialpad/DialpadFragment$2;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V
    invoke-static {v3}, Lcom/android/dialer/dialpad/DialpadFragment;->access$500(Lcom/android/dialer/dialpad/DialpadFragment;)V

    goto :goto_0
.end method
