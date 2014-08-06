.class public Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneFavoriteMergedAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;,
        Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;
    }
.end annotation


# instance fields
.field private final mAccountFilterHeaderContainer:Landroid/view/View;

.field private final mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

.field private final mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

.field private final mFrequentHeaderPaddingTop:I

.field private final mItemPaddingLeft:I

.field private final mItemPaddingRight:I

.field private final mLoadingView:Landroid/view/View;

.field private final mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/view/View;Lcom/android/contacts/common/list/ContactEntryListAdapter;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactTileAdapter"    # Lcom/android/contacts/common/list/ContactTileAdapter;
    .param p3, "accountFilterHeaderContainer"    # Landroid/view/View;
    .param p4, "contactEntryListAdapter"    # Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .param p5, "loadingView"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 66
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f060003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    .line 67
    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    .line 68
    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mFrequentHeaderPaddingTop:I

    .line 70
    iput-object p2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    .line 71
    iput-object p4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    .line 73
    iput-object p3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    .line 75
    new-instance v1, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;-><init>(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;)V

    iput-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 76
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 77
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 79
    iput-object p5, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mLoadingView:Landroid/view/View;

    .line 80
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 91
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v1

    .line 92
    .local v1, "contactTileAdapterCount":I
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    .line 93
    .local v0, "contactEntryListAdapterCount":I
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    add-int/lit8 v2, v1, 0x2

    .line 100
    :goto_0
    return v2

    :cond_0
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 106
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v1

    .line 107
    .local v1, "contactTileAdapterCount":I
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    .line 108
    .local v0, "contactEntryListAdapterCount":I
    if-ge p1, v1, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 118
    :goto_0
    return-object v3

    .line 110
    :cond_0
    if-ne p1, v1, :cond_1

    .line 111
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    goto :goto_0

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mLoadingView:Landroid/view/View;

    goto :goto_0

    .line 117
    :cond_2
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, -0x1

    .line 118
    .local v2, "localPosition":I
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItem(I)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 125
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 138
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v1

    .line 139
    .local v1, "contactTileAdapterCount":I
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    .line 171
    .local v0, "contactEntryListAdapterCount":I
    if-ge p1, v1, :cond_1

    .line 172
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v3

    .line 185
    :cond_0
    :goto_0
    return v3

    .line 173
    :cond_1
    if-ne p1, v1, :cond_2

    .line 174
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->getViewTypeCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getViewTypeCount()I

    move-result v5

    add-int v3, v4, v5

    goto :goto_0

    .line 177
    :cond_2
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->getViewTypeCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    .line 182
    :cond_3
    sub-int v4, p1, v1

    add-int/lit8 v2, v4, -0x1

    .line 183
    .local v2, "localPosition":I
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItemViewType(I)I

    move-result v3

    .line 185
    .local v3, "type":I
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->getViewTypeCount()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .param p1, "sectionIndex"    # I

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 282
    .local v0, "contactTileAdapterCount":I
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPositionForSection(I)I

    move-result v1

    .line 283
    .local v1, "localPosition":I
    add-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v1

    return v2
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 288
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 289
    .local v0, "contactTileAdapterCount":I
    if-gt p1, v0, :cond_0

    .line 290
    const/4 v2, 0x0

    .line 294
    :goto_0
    return v2

    .line 293
    :cond_0
    sub-int v2, p1, v0

    add-int/lit8 v1, v2, -0x1

    .line 294
    .local v1, "localPosition":I
    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v2, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getSectionForPosition(I)I

    move-result v2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v12}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v5

    .line 193
    .local v5, "contactTileAdapterCount":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v12}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v4

    .line 197
    .local v4, "contactEntryListAdapterCount":I
    move/from16 v0, p1

    if-ge v0, v5, :cond_2

    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 199
    .local v11, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v12}, Lcom/android/contacts/common/list/ContactTileAdapter;->getFrequentHeaderPosition()I

    move-result v7

    .line 200
    .local v7, "frequentHeaderPosition":I
    move/from16 v0, p1

    if-ge v0, v7, :cond_0

    .line 243
    .end local v7    # "frequentHeaderPosition":I
    .end local v11    # "view":Landroid/view/View;
    :goto_0
    return-object v11

    .line 202
    .restart local v7    # "frequentHeaderPosition":I
    .restart local v11    # "view":Landroid/view/View;
    :cond_0
    move/from16 v0, p1

    if-ne v0, v7, :cond_1

    .line 203
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mFrequentHeaderPaddingTop:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    invoke-virtual {v11}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    move-object v6, v11

    .line 207
    check-cast v6, Landroid/widget/FrameLayout;

    .line 208
    .local v6, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 209
    .local v3, "child":Landroid/view/View;
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v10, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 212
    .local v10, "params":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    const/4 v15, 0x0

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 213
    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 216
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "frameLayout":Landroid/widget/FrameLayout;
    .end local v7    # "frequentHeaderPosition":I
    .end local v10    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "view":Landroid/view/View;
    :cond_2
    move/from16 v0, p1

    if-ne v0, v5, :cond_4

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->setPadding(IIII)V

    .line 224
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    const v13, 0x7f0a0016

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-nez v4, :cond_3

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v13, v12}, Landroid/view/View;->setVisibility(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mAccountFilterHeaderContainer:Landroid/view/View;

    goto :goto_0

    .line 224
    :cond_3
    const/16 v12, 0x8

    goto :goto_1

    .line 229
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v12}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mLoadingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mLoadingView:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingTop()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mLoadingView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getPaddingBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->setPadding(IIII)V

    .line 234
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mLoadingView:Landroid/view/View;

    goto/16 :goto_0

    .line 237
    :cond_5
    sub-int v12, p1, v5

    add-int/lit8 v9, v12, -0x1

    .line 238
    .local v9, "localPosition":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v12, v9, v0, v13}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/list/ContactListItemView;

    .line 240
    .local v8, "itemView":Lcom/android/contacts/common/list/ContactListItemView;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    invoke-virtual {v8}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    invoke-virtual {v8}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v8, v12, v13, v14, v15}, Lcom/android/contacts/common/list/ContactListItemView;->setPadding(IIII)V

    .line 242
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingLeft:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mItemPaddingRight:I

    invoke-virtual {v8, v12, v13}, Lcom/android/contacts/common/list/ContactListItemView;->setSelectionBoundsHorizontalMargin(II)V

    move-object v11, v8

    .line 243
    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getViewTypeCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 261
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v1

    .line 262
    .local v1, "contactTileAdapterCount":I
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getCount()I

    move-result v0

    .line 263
    .local v0, "contactEntryListAdapterCount":I
    if-ge p1, v1, :cond_1

    .line 264
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v3, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->isEnabled(I)Z

    move-result v3

    .line 274
    :cond_0
    :goto_0
    return v3

    .line 265
    :cond_1
    if-eq p1, v1, :cond_0

    .line 269
    iget-object v4, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v4

    if-nez v4, :cond_0

    .line 273
    sub-int v3, p1, v1

    add-int/lit8 v2, v3, -0x1

    .line 274
    .local v2, "localPosition":I
    iget-object v3, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactEntryListAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isEnabled(I)Z

    move-result v3

    goto :goto_0
.end method

.method public shouldShowFirstScroller(I)Z
    .locals 2
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 305
    .local v0, "contactTileAdapterCount":I
    if-le p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
