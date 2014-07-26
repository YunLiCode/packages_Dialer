.class Lcom/android/dialer/multichoice/MultiPickCallsActivity$1;
.super Ljava/lang/Object;
.source "MultiPickCallsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/multichoice/MultiPickCallsActivity;->showActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/multichoice/MultiPickCallsActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/multichoice/MultiPickCallsActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity$1;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity$1;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->setResult(I)V

    .line 131
    iget-object v0, p0, Lcom/android/dialer/multichoice/MultiPickCallsActivity$1;->this$0:Lcom/android/dialer/multichoice/MultiPickCallsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/multichoice/MultiPickCallsActivity;->finish()V

    .line 132
    return-void
.end method
