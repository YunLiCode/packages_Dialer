.class public Lcom/android/dialer/BackScrollManager;
.super Ljava/lang/Object;
.source "BackScrollManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/BackScrollManager$ScrollableHeader;
    }
.end annotation


# instance fields
.field private final mHeader:Lcom/android/dialer/BackScrollManager$ScrollableHeader;

.field private final mListView:Landroid/widget/ListView;

.field private final mScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method private constructor <init>(Lcom/android/dialer/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V
    .locals 1
    .param p1, "header"    # Lcom/android/dialer/BackScrollManager$ScrollableHeader;
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/dialer/BackScrollManager$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/BackScrollManager$1;-><init>(Lcom/android/dialer/BackScrollManager;)V

    iput-object v0, p0, Lcom/android/dialer/BackScrollManager;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 79
    iput-object p1, p0, Lcom/android/dialer/BackScrollManager;->mHeader:Lcom/android/dialer/BackScrollManager$ScrollableHeader;

    .line 80
    iput-object p2, p0, Lcom/android/dialer/BackScrollManager;->mListView:Landroid/widget/ListView;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/BackScrollManager;)Lcom/android/dialer/BackScrollManager$ScrollableHeader;
    .locals 1
    .param p0, "x0"    # Lcom/android/dialer/BackScrollManager;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/dialer/BackScrollManager;->mHeader:Lcom/android/dialer/BackScrollManager$ScrollableHeader;

    return-object v0
.end method

.method private bind()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/dialer/BackScrollManager;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/dialer/BackScrollManager;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/dialer/BackScrollManager;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 88
    return-void
.end method

.method public static bind(Lcom/android/dialer/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V
    .locals 1
    .param p0, "header"    # Lcom/android/dialer/BackScrollManager$ScrollableHeader;
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 74
    new-instance v0, Lcom/android/dialer/BackScrollManager;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/BackScrollManager;-><init>(Lcom/android/dialer/BackScrollManager$ScrollableHeader;Landroid/widget/ListView;)V

    .line 75
    .local v0, "backScrollManager":Lcom/android/dialer/BackScrollManager;
    invoke-direct {v0}, Lcom/android/dialer/BackScrollManager;->bind()V

    .line 76
    return-void
.end method
