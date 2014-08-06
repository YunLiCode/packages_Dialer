.class Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;
.super Landroid/database/ContentObserver;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;)V
    .locals 1

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    .line 718
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 719
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 722
    # getter for: Lcom/android/dialer/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dtmf observer onChange"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v2, p0, Lcom/android/dialer/dialpad/DialpadFragment$DTMFObserver;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/dialer/dialpad/DialpadFragment;->mDTMFToneEnabled:Z
    invoke-static {v1, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->access$702(Lcom/android/dialer/dialpad/DialpadFragment;Z)Z

    .line 725
    return-void

    .line 723
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
