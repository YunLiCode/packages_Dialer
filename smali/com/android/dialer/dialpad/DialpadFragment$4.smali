.class Lcom/android/dialer/dialpad/DialpadFragment$4;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadFragment;->queryLastOutgoingCall()V
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
    .line 2089
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$4;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lastOutgoingCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2095
    const-string v0, "-2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2098
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$4;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    const-string v1, ""

    # setter for: Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$802(Lcom/android/dialer/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 2102
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$4;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # invokes: Lcom/android/dialer/dialpad/DialpadFragment;->updateDialAndDeleteButtonEnabledState()V
    invoke-static {v0}, Lcom/android/dialer/dialpad/DialpadFragment;->access$500(Lcom/android/dialer/dialpad/DialpadFragment;)V

    .line 2103
    return-void

    .line 2100
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/DialpadFragment$4;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    # setter for: Lcom/android/dialer/dialpad/DialpadFragment;->mLastNumberDialed:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/dialer/dialpad/DialpadFragment;->access$802(Lcom/android/dialer/dialpad/DialpadFragment;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
