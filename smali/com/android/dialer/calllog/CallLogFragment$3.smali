.class Lcom/android/dialer/calllog/CallLogFragment$3;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 178
    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 195
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # invokes: Lcom/android/dialer/calllog/CallLogFragment;->unregisterPhoneCallReceiver()V
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)V

    .line 196
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I
    invoke-static {v1, v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$202(Lcom/android/dialer/calllog/CallLogFragment;I)I

    .line 199
    :goto_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z
    invoke-static {v1, v4}, Lcom/android/dialer/calllog/CallLogFragment;->access$102(Lcom/android/dialer/calllog/CallLogFragment;Z)Z

    .line 200
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # invokes: Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)V

    .line 203
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "save_calltype"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "calltype"

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # getter for: Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I
    invoke-static {v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$200(Lcom/android/dialer/calllog/CallLogFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    return-void

    .line 183
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :pswitch_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # invokes: Lcom/android/dialer/calllog/CallLogFragment;->registerPhoneCallReceiver()V
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$500(Lcom/android/dialer/calllog/CallLogFragment;)V

    .line 184
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I
    invoke-static {v1, v4}, Lcom/android/dialer/calllog/CallLogFragment;->access$202(Lcom/android/dialer/calllog/CallLogFragment;I)I

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # invokes: Lcom/android/dialer/calllog/CallLogFragment;->registerPhoneCallReceiver()V
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$500(Lcom/android/dialer/calllog/CallLogFragment;)V

    .line 188
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, 0x2

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I
    invoke-static {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$202(Lcom/android/dialer/calllog/CallLogFragment;I)I

    goto :goto_0

    .line 191
    :pswitch_2
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # invokes: Lcom/android/dialer/calllog/CallLogFragment;->registerPhoneCallReceiver()V
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$500(Lcom/android/dialer/calllog/CallLogFragment;)V

    .line 192
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$3;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    const/4 v2, 0x3

    # setter for: Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I
    invoke-static {v1, v2}, Lcom/android/dialer/calllog/CallLogFragment;->access$202(Lcom/android/dialer/calllog/CallLogFragment;I)I

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x7f0a0039
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
