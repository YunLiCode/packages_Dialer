.class Lcom/android/dialer/multichoice/MultiPickCallsFragment$1;
.super Ljava/lang/Object;
.source "MultiPickCallsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/multichoice/MultiPickCallsFragment;->showConfirmDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/android/dialer/multichoice/MultiPickCallsFragment;I)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$1;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    iput p2, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$1;->val$resId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 356
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 357
    iget v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$1;->val$resId:I

    const v2, 0x7f080175

    if-ne v1, v2, :cond_0

    .line 358
    new-instance v0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;

    iget-object v1, p0, Lcom/android/dialer/multichoice/MultiPickCallsFragment$1;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsFragment;

    invoke-direct {v0, v1}, Lcom/android/dialer/multichoice/MultiPickCallsFragment$DeleteCallsThread;-><init>(Lcom/android/dialer/multichoice/MultiPickCallsFragment;)V

    .line 359
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 364
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    # getter for: Lcom/android/dialer/multichoice/MultiPickCallsFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/dialer/multichoice/MultiPickCallsFragment;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown button event has come: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
