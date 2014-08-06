.class Lcom/android/dialer/CallDetailActivity$4;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 265
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$4;->this$0:Lcom/android/dialer/CallDetailActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 268
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$4;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v0}, Lcom/android/dialer/CallDetailActivity;->access$100(Lcom/android/dialer/CallDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return v1

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$4;->this$0:Lcom/android/dialer/CallDetailActivity;

    # invokes: Lcom/android/dialer/CallDetailActivity;->startPhoneNumberSelectedActionMode(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/dialer/CallDetailActivity;->access$200(Lcom/android/dialer/CallDetailActivity;Landroid/view/View;)V

    goto :goto_0
.end method
