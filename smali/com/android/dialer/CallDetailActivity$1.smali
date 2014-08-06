.class Lcom/android/dialer/CallDetailActivity$1;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->access$100(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$1;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$ViewEntry;->primaryIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/dialer/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
