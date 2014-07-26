.class Lcom/android/dialer/calllog/CallLogFragment$8;
.super Landroid/telephony/PhoneStateListener;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment;->registerPhoneCallReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$8;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 723
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 736
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$8;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # getter for: Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$000(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/calllog/CallLogFragment$8$1;

    invoke-direct {v1, p0}, Lcom/android/dialer/calllog/CallLogFragment$8$1;-><init>(Lcom/android/dialer/calllog/CallLogFragment$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
