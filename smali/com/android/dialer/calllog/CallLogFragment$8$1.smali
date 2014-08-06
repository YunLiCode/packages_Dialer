.class Lcom/android/dialer/calllog/CallLogFragment$8$1;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment$8;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/dialer/calllog/CallLogFragment$8;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment$8;)V
    .locals 0

    .prologue
    .line 727
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$8$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$8$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$8;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$8;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$8$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$8;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$8;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$8$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$8;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogFragment$8;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v1, 0x0

    # invokes: Lcom/android/dialer/calllog/CallLogFragment;->updateFilterTypeAndHeader(I)V
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$900(Lcom/android/dialer/calllog/CallLogFragment;I)V

    goto :goto_0
.end method
