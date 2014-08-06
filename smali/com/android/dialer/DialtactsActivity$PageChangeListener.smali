.class Lcom/android/dialer/DialtactsActivity$PageChangeListener;
.super Ljava/lang/Object;
.source "DialtactsActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/DialtactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListener"
.end annotation


# instance fields
.field private mCurrentPosition:I

.field private mNextPosition:I

.field final synthetic this$0:Lcom/android/dialer/DialtactsActivity;


# direct methods
.method private constructor <init>(Lcom/android/dialer/DialtactsActivity;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 179
    iput-object p1, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    .line 185
    iput v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mNextPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/DialtactsActivity;Lcom/android/dialer/DialtactsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/DialtactsActivity;
    .param p2, "x1"    # Lcom/android/dialer/DialtactsActivity$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/dialer/DialtactsActivity$PageChangeListener;-><init>(Lcom/android/dialer/DialtactsActivity;)V

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    return v0
.end method

.method public getNextPosition()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mNextPosition:I

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 275
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mNextPosition:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/dialer/DialtactsActivity;->access$300(Lcom/android/dialer/DialtactsActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mNextPosition:I

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/dialer/DialtactsActivity;->mDuringSwipe:Z

    .line 249
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/dialer/DialtactsActivity;->mUserTabClick:Z

    .line 251
    iget-object v3, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    iget v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mNextPosition:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    # invokes: Lcom/android/dialer/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V
    invoke-static {v3, v0}, Lcom/android/dialer/DialtactsActivity;->access$200(Lcom/android/dialer/DialtactsActivity;Z)V

    .line 252
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    iget v3, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    # invokes: Lcom/android/dialer/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v0, v3, v2}, Lcom/android/dialer/DialtactsActivity;->access$400(Lcom/android/dialer/DialtactsActivity;IZ)V

    .line 253
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    iget v2, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mNextPosition:I

    # invokes: Lcom/android/dialer/DialtactsActivity;->sendFragmentVisibilityChange(IZ)V
    invoke-static {v0, v2, v1}, Lcom/android/dialer/DialtactsActivity;->access$400(Lcom/android/dialer/DialtactsActivity;IZ)V

    .line 255
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/dialer/DialtactsActivity;->invalidateOptionsMenu()V

    .line 257
    iget v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mNextPosition:I

    iput v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    goto :goto_0

    :cond_1
    move v0, v2

    .line 251
    goto :goto_1

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    iput-boolean v1, v0, Lcom/android/dialer/DialtactsActivity;->mDuringSwipe:Z

    .line 263
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/dialer/DialtactsActivity;->mUserTabClick:Z

    goto :goto_0

    .line 268
    :pswitch_2
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    iput-boolean v1, v0, Lcom/android/dialer/DialtactsActivity;->mDuringSwipe:Z

    .line 269
    iget-object v0, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    iput-boolean v2, v0, Lcom/android/dialer/DialtactsActivity;->mUserTabClick:Z

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 190
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/dialer/DialtactsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 196
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    # getter for: Lcom/android/dialer/DialtactsActivity;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;
    invoke-static {v1}, Lcom/android/dialer/DialtactsActivity;->access$100(Lcom/android/dialer/DialtactsActivity;)Lcom/android/dialer/dialpad/DialpadFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    iget-boolean v1, v1, Lcom/android/dialer/DialtactsActivity;->mDuringSwipe:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->this$0:Lcom/android/dialer/DialtactsActivity;

    const/4 v2, 0x0

    # invokes: Lcom/android/dialer/DialtactsActivity;->updateFakeMenuButtonsVisibility(Z)V
    invoke-static {v1, v2}, Lcom/android/dialer/DialtactsActivity;->access$200(Lcom/android/dialer/DialtactsActivity;Z)V

    .line 206
    :cond_0
    iget v1, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    if-ne v1, p1, :cond_1

    .line 207
    const-string v1, "DialtactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous position and next position became same ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1
    iput p1, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mNextPosition:I

    .line 211
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 212
    return-void
.end method

.method public setCurrentPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/android/dialer/DialtactsActivity$PageChangeListener;->mCurrentPosition:I

    .line 216
    return-void
.end method
