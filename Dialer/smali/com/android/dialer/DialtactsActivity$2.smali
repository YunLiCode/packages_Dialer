.class Lcom/android/dialer/DialtactsActivity$2;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


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
    .line 335
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 379
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    const/4 v1, 0x1

    .line 350
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    iget-boolean v0, v0, Lcom/android/dialer/DialtactsActivity;->mDuringSwipe:Z

    if-nez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$100(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/dialpad/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v2, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    # invokes: Lcom/android/dialer/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V
    invoke-static {v2, v0}, Lcom/android/dialer/DialtactsActivity;->access$200(Lcom/android/dialer/DialtactsActivity;Z)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    iput-boolean v1, v0, Lcom/android/dialer/DialtactsActivity;->mUserTabClick:Z

    .line 361
    :cond_1
    # getter for: Lcom/android/dialer/DialtactsActivity;->show4TabsPhone:Z
    invoke-static {}, Lcom/android/dialer/DialtactsActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 362
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # invokes: Lcom/android/dialer/DialtactsActivity;->startTabContacts()V
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$900(Lcom/android/dialer/DialtactsActivity;)V

    .line 368
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/dialer/dialpad/DialpadFragment;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_3

    .line 372
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    # invokes: Lcom/android/dialer/DialtactsActivity;->evaluateSavedTab(I)I
    invoke-static {v1, v2}, Lcom/android/dialer/DialtactsActivity;->access$1100(Lcom/android/dialer/DialtactsActivity;I)I

    move-result v1

    # setter for: Lcom/android/dialer/DialtactsActivity;->mLastManuallySelectedFragment:I
    invoke-static {v0, v1}, Lcom/android/dialer/DialtactsActivity;->access$1002(Lcom/android/dialer/DialtactsActivity;I)I

    .line 374
    :cond_3
    return-void

    .line 356
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 363
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$300(Lcom/android/dialer/DialtactsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$2;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$300(Lcom/android/dialer/DialtactsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .prologue
    .line 339
    return-void
.end method
