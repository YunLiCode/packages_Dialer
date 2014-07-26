.class Lcom/android/dialer/calllog/CallLogFragment$6;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/calllog/CallLogFragment;
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
    .line 378
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$6;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 382
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 383
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getPhoneCount()I

    move-result v0

    if-le p2, v0, :cond_1

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$6;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v1, -0x1

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$402(Lcom/android/dialer/calllog/CallLogFragment;I)I

    .line 387
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$6;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "subscription"

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$6;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # getter for: Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$400(Lcom/android/dialer/calllog/CallLogFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$6;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # invokes: Lcom/android/dialer/calllog/CallLogFragment;->updateSubImage()V
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$700(Lcom/android/dialer/calllog/CallLogFragment;)V

    .line 390
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$6;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$102(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    .line 391
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$6;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # invokes: Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)V

    .line 392
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$6;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    add-int/lit8 v1, p2, -0x1

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mCallSubFilter:I
    invoke-static {v0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$402(Lcom/android/dialer/calllog/CallLogFragment;I)I

    goto :goto_0
.end method
