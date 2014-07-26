.class Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollListener"
.end annotation


# instance fields
.field private mShouldShowFastScroller:Z

.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;
    .param p2, "x1"    # Lcom/android/dialer/list/PhoneFavoriteFragment$1;

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
    invoke-static {v1}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1500(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->shouldShowFirstScroller(I)Z

    move-result v0

    .line 201
    .local v0, "shouldShow":Z
    iget-boolean v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;->mShouldShowFastScroller:Z

    if-eq v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1600(Lcom/android/dialer/list/PhoneFavoriteFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1600(Lcom/android/dialer/list/PhoneFavoriteFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 204
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1600(Lcom/android/dialer/list/PhoneFavoriteFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    .line 205
    iput-boolean v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ScrollListener;->mShouldShowFastScroller:Z

    .line 207
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 211
    return-void
.end method
