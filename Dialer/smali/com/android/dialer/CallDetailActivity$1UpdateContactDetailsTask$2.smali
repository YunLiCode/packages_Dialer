.class Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/dialer/BackScrollManager$ScrollableHeader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->onPostExecute([Lcom/android/dialer/PhoneCallDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mControls:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mPhoto:Landroid/view/View;

.field private mSeparator:Landroid/view/View;

.field final synthetic this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;


# direct methods
.method constructor <init>(Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;)V
    .locals 2

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->mControls:Landroid/view/View;

    .line 598
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->mPhoto:Landroid/view/View;

    .line 599
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->mHeader:Landroid/view/View;

    .line 600
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->this$1:Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask;->this$0:Lcom/android/dialer/CallDetailActivity;

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->mSeparator:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getMaximumScrollableHeaderOffset()I
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->mPhoto:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 616
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->mPhoto:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->mSeparator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/dialer/CallDetailActivity$1UpdateContactDetailsTask$2;->mControls:Landroid/view/View;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 605
    return-void
.end method
