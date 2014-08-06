.class Lcom/android/dialer/DialtactsActivity$6;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHomeInActionBarSelected()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    # invokes: Lcom/android/dialer/DialtactsActivity;->exitSearchUi()V
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$1400(Lcom/android/dialer/DialtactsActivity;)V

    .line 458
    return-void
.end method

.method public onPickPhoneNumberAction(Landroid/net/Uri;)V
    .locals 2
    .param p1, "dataUri"    # Landroid/net/Uri;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$6;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/dialer/DialtactsActivity;->getCallOrigin()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/contacts/common/activity/TransactionSafeActivity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public onShortcutIntentCreated(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 452
    const-string v0, "DialtactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported intent has come ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return-void
.end method
