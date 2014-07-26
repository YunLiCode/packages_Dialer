.class Lcom/android/dialer/list/PhoneFavoriteFragment$1;
.super Landroid/os/Handler;
.source "PhoneFavoriteFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$1;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1000(Lcom/android/dialer/list/PhoneFavoriteFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
