.class Lcom/android/dialer/dialpad/DialpadFragment$3;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/dialpad/DialpadFragment;->showNoSpeedNumberDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/dialpad/DialpadFragment;

.field final synthetic val$thisActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/dialer/dialpad/DialpadFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/android/dialer/dialpad/DialpadFragment$3;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    iput-object p2, p0, Lcom/android/dialer/dialpad/DialpadFragment$3;->val$thisActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1299
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$3;->val$thisActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/dialer/SpeedDialListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1300
    iget-object v1, p0, Lcom/android/dialer/dialpad/DialpadFragment$3;->this$0:Lcom/android/dialer/dialpad/DialpadFragment;

    invoke-virtual {v1, v0}, Lcom/android/dialer/dialpad/DialpadFragment;->startActivity(Landroid/content/Intent;)V

    .line 1301
    return-void
.end method
