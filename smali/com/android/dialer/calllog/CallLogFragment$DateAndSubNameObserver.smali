.class Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;
.super Landroid/database/ContentObserver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateAndSubNameObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;


# direct methods
.method public constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;)V
    .locals 1

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    .line 500
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 501
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mChangeEnabled:Z
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$802(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    .line 505
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIME_12_24 is="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$DateAndSubNameObserver;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "time_12_24"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return-void
.end method
