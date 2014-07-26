.class public Lcom/android/dialer/calllog/CallListItemView;
.super Landroid/view/ViewGroup;
.source "CallListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;,
        Lcom/android/dialer/calllog/CallListItemView$PhotoPosition;
    }
.end annotation


# instance fields
.field private isSectionHeader:Z

.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCallBtnSize:I

.field private mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

.field private mCallButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCallLogInnerMarginDim:I

.field private mCountAndDateTextViewHeight:I

.field private mCountAndDateView:Landroid/widget/TextView;

.field private mDefaultPhotoViewSize:I

.field private final mGapBetweenImageAndText:I

.field private final mGapBetweenLabelAndNumber:I

.field private mHeaderBackgroundHeight:I

.field private mHeaderDivider:Landroid/view/View;

.field private final mHeaderTextColor:I

.field private final mHeaderTextIndent:I

.field private final mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private final mHeaderUnderlineColor:I

.field private final mHeaderUnderlineHeight:I

.field private mHeaderVisible:Z

.field private mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerVisible:Z

.field private mHorizontalDivierTopMargin:I

.field private mKeepHorizontalPaddingForPhotoView:Z

.field private mKeepVerticalPaddingForPhotoView:Z

.field private mLabelAndNumberViewMaxHeight:I

.field private mLabelView:Landroid/widget/TextView;

.field private mLabelViewHeight:I

.field private mNameTextView:Landroid/widget/TextView;

.field private mNameTextViewHeight:I

.field private mNumberView:Landroid/widget/TextView;

.field private mNumberViewHeight:I

.field private mPhotoPosition:Lcom/android/dialer/calllog/CallListItemView$PhotoPosition;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mPhotoViewWidthAndHeightAreReady:Z

.field private final mPreferredHeight:I

.field private mPrimaryTextColor:Landroid/content/res/ColorStateList;

.field private final mPrimaryTextSize:I

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactEnabled:Z

.field private mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private final mSecondaryTextSize:I

.field private mSelectableItemBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectionBoundsMarginLeft:I

.field private mSelectionBoundsMarginRight:I

.field private mSubscriptionTextViewHeight:I

.field private mSubscriptionView:Landroid/widget/TextView;

.field private final mTextIndent:I

.field private final mTypeIconMargin:I

.field private final mTypeIconSize:I

.field private mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

.field private mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalDividerMargin:I

.field private mVerticalDividerVisible:Z

.field private mVerticalDividerWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 186
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput-boolean v3, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerVisible:Z

    .line 87
    sget-object v1, Lcom/android/dialer/calllog/CallListItemView$PhotoPosition;->LEFT:Lcom/android/dialer/calllog/CallListItemView$PhotoPosition;

    iput-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoPosition:Lcom/android/dialer/calllog/CallListItemView$PhotoPosition;

    .line 100
    iput-boolean v4, p0, Lcom/android/dialer/calllog/CallListItemView;->isSectionHeader:Z

    .line 103
    iput-boolean v3, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContactEnabled:Z

    .line 114
    const/16 v1, 0x12

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mPrimaryTextSize:I

    .line 115
    const/16 v1, 0xe

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mSecondaryTextSize:I

    .line 148
    iput-boolean v4, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 162
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 187
    iput-object p1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/R$styleable;->ContactListItemView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 191
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mPreferredHeight:I

    .line 193
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    const/16 v1, 0x1e

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerMargin:I

    .line 200
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenImageAndText:I

    .line 202
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenLabelAndNumber:I

    .line 204
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIconMargin:I

    .line 206
    const/16 v1, 0xd

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIconSize:I

    .line 208
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mDefaultPhotoViewSize:I

    .line 210
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextIndent:I

    .line 212
    const/16 v1, 0x12

    const v2, -0x333334

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextColor:I

    .line 214
    const/16 v1, 0x13

    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextSize:I

    .line 216
    const/16 v1, 0x14

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderBackgroundHeight:I

    .line 218
    const/16 v1, 0x15

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderUnderlineHeight:I

    .line 220
    const/16 v1, 0x16

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderUnderlineColor:I

    .line 222
    const/16 v1, 0x18

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mTextIndent:I

    .line 224
    const/16 v1, 0x1d

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallBtnSize:I

    .line 227
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 229
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/dialer/R$styleable;->CallLog:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 230
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mPrimaryTextColor:Landroid/content/res/ColorStateList;

    .line 231
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    .line 232
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 234
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v3, [I

    const v3, 0x101030e

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 236
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mSelectableItemBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallLogInnerMarginDim:I

    .line 241
    iget v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallLogInnerMarginDim:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDivierTopMargin:I

    .line 243
    iget v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDivierTopMargin:I

    invoke-virtual {p0, v4, v4, v4, v1}, Lcom/android/dialer/calllog/CallListItemView;->setPadding(IIII)V

    .line 245
    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerHeight:I

    .line 247
    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 250
    :cond_0
    return-void
.end method

.method private ensurePhotoViewSize()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 581
    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    if-nez v2, :cond_0

    .line 582
    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContactEnabled:Z

    if-eqz v2, :cond_1

    .line 583
    iget-object v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    const v6, 0x10102af

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 586
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidth:I

    .line 589
    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewHeight:I

    .line 592
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 601
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :goto_0
    iput-boolean v8, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 603
    :cond_0
    return-void

    .line 593
    :cond_1
    iget-object v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 594
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getDefaultPhotoViewSize()I

    move-result v2

    iput v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewHeight:I

    iput v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidth:I

    goto :goto_0

    .line 596
    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    .line 597
    .local v1, "defaultPhotoViewSize":I
    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v2, :cond_3

    move v2, v1

    :goto_1
    iput v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidth:I

    .line 598
    iget-boolean v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mKeepVerticalPaddingForPhotoView:Z

    if-eqz v2, :cond_4

    .end local v1    # "defaultPhotoViewSize":I
    :goto_2
    iput v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewHeight:I

    goto :goto_0

    .restart local v1    # "defaultPhotoViewSize":I
    :cond_3
    move v2, v3

    .line 597
    goto :goto_1

    :cond_4
    move v1, v3

    .line 598
    goto :goto_2
.end method

.method private ensureVerticalDivider()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 573
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerWidth:I

    .line 575
    :cond_0
    return-void
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 930
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 556
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 557
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 558
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mSelectionBoundsMarginLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 559
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mSelectionBoundsMarginRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 560
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 640
    :cond_2
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerVisible:Z

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 643
    :cond_3
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerVisible:Z

    if-eqz v0, :cond_4

    .line 644
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 647
    :cond_4
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 648
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 615
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 616
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 619
    :cond_0
    return-void
.end method

.method public getCallButton()Landroid/widget/ImageView;
    .locals 5

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    if-nez v0, :cond_0

    .line 954
    new-instance v0, Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    .line 955
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 956
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mSelectableItemBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 957
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;->setImageResource(I)V

    .line 958
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    iget v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallLogInnerMarginDim:I

    iget v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallLogInnerMarginDim:I

    iget v3, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallLogInnerMarginDim:I

    iget v4, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallLogInnerMarginDim:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;->setPadding(IIII)V

    .line 960
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 961
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallListItemView;->addView(Landroid/view/View;)V

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    return-object v0
.end method

.method public getCallTypeIcons()Lcom/android/dialer/calllog/CallTypeIconsView;
    .locals 2

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    if-nez v0, :cond_0

    .line 922
    new-instance v0, Lcom/android/dialer/calllog/CallTypeIconsView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/CallTypeIconsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    .line 923
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallTypeIconsView;->setActivated(Z)V

    .line 924
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallListItemView;->addView(Landroid/view/View;)V

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    return-object v0
.end method

.method public getCountAndDateView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 869
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    .line 870
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 871
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 872
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 873
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 874
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 875
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallListItemView;->addView(Landroid/view/View;)V

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    .prologue
    .line 610
    iget v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 822
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 823
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    .line 824
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 825
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 826
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 827
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoPosition:Lcom/android/dialer/calllog/CallListItemView$PhotoPosition;

    sget-object v1, Lcom/android/dialer/calllog/CallListItemView$PhotoPosition;->LEFT:Lcom/android/dialer/calllog/CallListItemView$PhotoPosition;

    if-ne v0, v1, :cond_1

    .line 828
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41600000

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 829
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 833
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 834
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallListItemView;->addView(Landroid/view/View;)V

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0

    .line 831
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 794
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 795
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 796
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 797
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 798
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 799
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallListItemView;->addView(Landroid/view/View;)V

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNumberView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    .line 853
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 854
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 855
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 856
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41600000

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 857
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 858
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 859
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallListItemView;->addView(Landroid/view/View;)V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 725
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_0

    .line 726
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_2

    .line 729
    new-instance v0, Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const v3, 0x10102af

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 730
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f08003f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallListItemView;->addView(Landroid/view/View;)V

    .line 736
    iput-boolean v5, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 738
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSubscriptionView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 896
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    .line 897
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 898
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 899
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 900
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 901
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 902
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallListItemView;->addView(Landroid/view/View;)V

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideCallItem()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 659
    invoke-virtual {p0, v0, v0}, Lcom/android/dialer/calllog/CallListItemView;->removePhotoView(ZZ)V

    .line 661
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 666
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 669
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 670
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    if-eqz v0, :cond_4

    .line 671
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallTypeIconsView;->setVisibility(I)V

    .line 672
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 673
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 675
    :cond_5
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    if-eqz v0, :cond_6

    .line 676
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;->setVisibility(I)V

    .line 677
    :cond_6
    return-void
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 563
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 628
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 629
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 632
    :cond_0
    return-void
.end method

.method protected layoutRightSide(IIII)I
    .locals 6
    .param p1, "height"    # I
    .param p2, "topBound"    # I
    .param p3, "bottomBound"    # I
    .param p4, "rightBound"    # I

    .prologue
    .line 531
    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    invoke-virtual {p0, v1}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    iget v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallBtnSize:I

    .line 533
    .local v0, "buttonWidth":I
    sub-int/2addr p4, v0

    .line 534
    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButton:Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;

    add-int v2, p4, v0

    iget v3, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerHeight:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDivierTopMargin:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, p4, p2, v2, v3}, Lcom/android/dialer/calllog/CallListItemView$DontPressWithParentImageView;->layout(IIII)V

    .line 539
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerVisible:Z

    .line 540
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallListItemView;->ensureVerticalDivider()V

    .line 541
    iget v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerWidth:I

    sub-int/2addr p4, v1

    .line 542
    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerMargin:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v2, p2

    iget v3, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerWidth:I

    add-int/2addr v3, p4

    iget v4, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerMargin:I

    mul-int/lit8 v4, v4, 0x4

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDivierTopMargin:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, p4, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 551
    .end local v0    # "buttonWidth":I
    :goto_0
    return p4

    .line 548
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerVisible:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 386
    sub-int v6, p5, p3

    .line 387
    .local v6, "height":I
    sub-int v18, p4, p2

    .line 390
    .local v18, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/calllog/CallListItemView;->getPaddingTop()I

    move-result v16

    .line 391
    .local v16, "topBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/calllog/CallListItemView;->getPaddingBottom()I

    move-result v19

    sub-int v4, v6, v19

    .line 392
    .local v4, "bottomBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/calllog/CallListItemView;->getPaddingLeft()I

    move-result v10

    .line 393
    .local v10, "leftBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/calllog/CallListItemView;->getPaddingRight()I

    move-result v19

    sub-int v13, v18, v19

    .line 396
    .local v13, "rightBound":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderVisible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextIndent:I

    move/from16 v20, v0

    add-int v20, v20, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderBackgroundHeight:I

    move/from16 v21, v0

    add-int v21, v21, v16

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v16

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v13, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderDivider:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderBackgroundHeight:I

    move/from16 v20, v0

    add-int v20, v20, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderBackgroundHeight:I

    move/from16 v21, v0

    add-int v21, v21, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderUnderlineHeight:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v1, v13, v2}, Landroid/view/View;->layout(IIII)V

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderBackgroundHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderUnderlineHeight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v16, v16, v19

    .line 409
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerVisible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerHeight:I

    move/from16 v20, v0

    sub-int v20, v4, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1, v13, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDivierTopMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    sub-int v4, v4, v19

    .line 418
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v10, v1, v13, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 420
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mActivatedStateSupported:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/calllog/CallListItemView;->isActivated()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 424
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 425
    .local v12, "photoView":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoPosition:Lcom/android/dialer/calllog/CallListItemView$PhotoPosition;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/dialer/calllog/CallListItemView$PhotoPosition;->LEFT:Lcom/android/dialer/calllog/CallListItemView$PhotoPosition;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 427
    if-eqz v12, :cond_d

    .line 429
    sub-int v19, v4, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewHeight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v11, v16, v19

    .line 430
    .local v11, "photoTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewHeight:I

    move/from16 v20, v0

    add-int v20, v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v10, v11, v0, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenImageAndText:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v10, v10, v19

    .line 458
    .end local v11    # "photoTop":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v6, v1, v4, v13}, Lcom/android/dialer/calllog/CallListItemView;->layoutRightSide(IIII)I

    move-result v13

    .line 461
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextViewHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mLabelAndNumberViewMaxHeight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionTextViewHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateTextViewHeight:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    add-int v17, v19, v20

    .line 463
    .local v17, "totalTextHeight":I
    add-int v19, v4, v16

    sub-int v19, v19, v17

    div-int/lit8 v15, v19, 0x2

    .line 467
    .local v15, "textTopBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenLabelAndNumber:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextViewHeight:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v15, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextViewHeight:I

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 476
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenLabelAndNumber:I

    move/from16 v19, v0

    sub-int v9, v13, v19

    .line 477
    .local v9, "labelAndNumberRightBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v20

    sub-int v20, v9, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mLabelAndNumberViewMaxHeight:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mLabelViewHeight:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mLabelAndNumberViewMaxHeight:I

    move/from16 v22, v0

    add-int v22, v22, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    sub-int v9, v9, v19

    .line 484
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenLabelAndNumber:I

    move/from16 v19, v0

    sub-int v9, v9, v19

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mLabelAndNumberViewMaxHeight:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mNumberViewHeight:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mLabelAndNumberViewMaxHeight:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v10, v1, v9, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 491
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 492
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mLabelAndNumberViewMaxHeight:I

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 496
    :cond_8
    move v5, v10

    .line 497
    .local v5, "countAndDateLeftBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/dialer/calllog/CallTypeIconsView;->getMeasuredWidth()I

    move-result v8

    .line 499
    .local v8, "iconWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateTextViewHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/dialer/calllog/CallTypeIconsView;->getMeasuredHeight()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v7, v19, 0x2

    .line 500
    .local v7, "iconPadding":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    move-object/from16 v19, v0

    add-int v20, v15, v7

    add-int v21, v10, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateTextViewHeight:I

    move/from16 v22, v0

    add-int v22, v22, v15

    sub-int v22, v22, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/android/dialer/calllog/CallTypeIconsView;->layout(IIII)V

    .line 505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIconMargin:I

    move/from16 v19, v0

    add-int v19, v19, v8

    add-int v5, v5, v19

    .line 508
    .end local v7    # "iconPadding":I
    .end local v8    # "iconWidth":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v14

    .line 509
    .local v14, "subscriptionWidth":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sub-int v20, v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenLabelAndNumber:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateTextViewHeight:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v5, v15, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 516
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    sub-int v20, v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenLabelAndNumber:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenLabelAndNumber:I

    move/from16 v21, v0

    sub-int v21, v13, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionTextViewHeight:I

    move/from16 v22, v0

    add-int v22, v22, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 522
    :cond_b
    return-void

    .line 424
    .end local v5    # "countAndDateLeftBound":I
    .end local v9    # "labelAndNumberRightBound":I
    .end local v12    # "photoView":Landroid/view/View;
    .end local v14    # "subscriptionWidth":I
    .end local v15    # "textTopBound":I
    .end local v17    # "totalTextHeight":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 436
    .restart local v12    # "photoView":Landroid/view/View;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenImageAndText:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v10, v10, v19

    goto/16 :goto_1

    .line 442
    :cond_e
    if-eqz v12, :cond_f

    .line 444
    sub-int v19, v4, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewHeight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v11, v16, v19

    .line 445
    .restart local v11    # "photoTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    sub-int v19, v13, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewHeight:I

    move/from16 v20, v0

    add-int v20, v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v11, v13, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 450
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenImageAndText:I

    move/from16 v20, v0

    add-int v19, v19, v20

    sub-int v13, v13, v19

    .line 454
    .end local v11    # "photoTop":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/calllog/CallListItemView;->mTextIndent:I

    move/from16 v19, v0

    add-int v10, v10, v19

    goto/16 :goto_1

    .line 508
    .restart local v5    # "countAndDateLeftBound":I
    .restart local v9    # "labelAndNumberRightBound":I
    .restart local v15    # "textTopBound":I
    .restart local v17    # "totalTextHeight":I
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v11, -0x80000000

    const/high16 v10, 0x40000000

    const/4 v9, 0x0

    .line 260
    invoke-static {v9, p1}, Lcom/android/dialer/calllog/CallListItemView;->resolveSize(II)I

    move-result v5

    .line 262
    .local v5, "specWidth":I
    iget-boolean v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerVisible:Z

    if-eqz v6, :cond_9

    .line 263
    iget v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mPreferredHeight:I

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDivierTopMargin:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerHeight:I

    add-int v4, v6, v7

    .line 268
    .local v4, "preferredHeight":I
    :goto_0
    iput v9, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextViewHeight:I

    .line 269
    iput v9, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelViewHeight:I

    .line 270
    iput v9, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberViewHeight:I

    .line 271
    iput v9, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelAndNumberViewMaxHeight:I

    .line 272
    iput v9, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionTextViewHeight:I

    .line 273
    iput v9, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateTextViewHeight:I

    .line 275
    invoke-direct {p0}, Lcom/android/dialer/calllog/CallListItemView;->ensurePhotoViewSize()V

    .line 280
    iget v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidth:I

    if-gtz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v6, :cond_a

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getPaddingLeft()I

    move-result v6

    sub-int v6, v5, v6

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidth:I

    iget v8, p0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallBtnSize:I

    iget v8, p0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenLabelAndNumber:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerWidth:I

    add-int/2addr v7, v8

    sub-int v1, v6, v7

    .line 292
    .local v1, "effectiveWidth":I
    :goto_1
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 293
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 296
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextViewHeight:I

    .line 302
    :cond_1
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 303
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 305
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelViewHeight:I

    .line 306
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 310
    .local v3, "labelWidth":I
    :goto_2
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 311
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    sub-int v7, v1, v3

    iget v8, p0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenLabelAndNumber:I

    sub-int/2addr v7, v8

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 314
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberViewHeight:I

    .line 316
    :cond_2
    iget v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelViewHeight:I

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberViewHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelAndNumberViewMaxHeight:I

    .line 318
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 319
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 322
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionTextViewHeight:I

    .line 326
    :cond_3
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {p0, v6}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 327
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIconSize:I

    iget-object v8, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {v8}, Lcom/android/dialer/calllog/CallTypeIconsView;->getCount()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIconSize:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/dialer/calllog/CallTypeIconsView;->measure(II)V

    .line 330
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {v6}, Lcom/android/dialer/calllog/CallTypeIconsView;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateTextViewHeight:I

    .line 333
    :cond_4
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 336
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {p0, v6}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 337
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {v6}, Lcom/android/dialer/calllog/CallTypeIconsView;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v1, v6

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mTypeIconMargin:I

    sub-int v0, v6, v7

    .line 339
    .local v0, "countAndDateWidth":I
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 340
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v0, v6

    .line 346
    :cond_5
    :goto_3
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 348
    iget v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateTextViewHeight:I

    iget-object v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateTextViewHeight:I

    .line 353
    .end local v0    # "countAndDateWidth":I
    :cond_6
    iget v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextViewHeight:I

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelAndNumberViewMaxHeight:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionTextViewHeight:I

    iget v8, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateTextViewHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v2, v6, v7

    .line 357
    .local v2, "height":I
    iget v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewHeight:I

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 360
    iget-boolean v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerVisible:Z

    if-eqz v6, :cond_7

    .line 361
    iget v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerHeight:I

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDivierTopMargin:I

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 365
    :cond_7
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 368
    iget-boolean v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderVisible:Z

    if-eqz v6, :cond_8

    .line 369
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget v8, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderBackgroundHeight:I

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 372
    iget v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderBackgroundHeight:I

    iget-object v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderBackgroundHeight:I

    .line 374
    iget v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderBackgroundHeight:I

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderUnderlineHeight:I

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    .line 375
    iget-boolean v6, p0, Lcom/android/dialer/calllog/CallListItemView;->isSectionHeader:Z

    if-eqz v6, :cond_8

    .line 376
    iget v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderBackgroundHeight:I

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderUnderlineHeight:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getPaddingTop()I

    move-result v7

    add-int v2, v6, v7

    .line 381
    :cond_8
    invoke-virtual {p0, v5, v2}, Lcom/android/dialer/calllog/CallListItemView;->setMeasuredDimension(II)V

    .line 382
    return-void

    .line 265
    .end local v1    # "effectiveWidth":I
    .end local v2    # "height":I
    .end local v3    # "labelWidth":I
    .end local v4    # "preferredHeight":I
    :cond_9
    iget v4, p0, Lcom/android/dialer/calllog/CallListItemView;->mPreferredHeight:I

    .restart local v4    # "preferredHeight":I
    goto/16 :goto_0

    .line 285
    :cond_a
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getPaddingLeft()I

    move-result v6

    sub-int v6, v5, v6

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallBtnSize:I

    iget v8, p0, Lcom/android/dialer/calllog/CallListItemView;->mGapBetweenLabelAndNumber:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/dialer/calllog/CallListItemView;->mVerticalDividerWidth:I

    add-int/2addr v7, v8

    sub-int v1, v6, v7

    .restart local v1    # "effectiveWidth":I
    goto/16 :goto_1

    .line 308
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "labelWidth":I
    goto/16 :goto_2

    .line 342
    :cond_c
    move v0, v1

    .line 343
    .restart local v0    # "countAndDateWidth":I
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/android/dialer/calllog/CallListItemView;->isVisible(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 344
    iget-object v6, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v0, v6

    goto/16 :goto_3
.end method

.method public removePhotoView(ZZ)V
    .locals 2
    .param p1, "keepHorizontalPadding"    # Z
    .param p2, "keepVerticalPadding"    # Z

    .prologue
    const/4 v1, 0x0

    .line 775
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 776
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    .line 777
    iput-boolean p2, p0, Lcom/android/dialer/calllog/CallListItemView;->mKeepVerticalPaddingForPhotoView:Z

    .line 778
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallListItemView;->removeView(Landroid/view/View;)V

    .line 780
    iput-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallListItemView;->removeView(Landroid/view/View;)V

    .line 784
    iput-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 786
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->forceLayout()V

    .line 976
    return-void
.end method

.method public setCountAndDate(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getCountAndDateView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mCountAndDateView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 934
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 942
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f08003f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 655
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHorizontalDividerVisible:Z

    .line 656
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 808
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setNumber(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 843
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getNumberView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mNumberView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 845
    return-void
.end method

.method public setOnCallButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "callButtonClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 949
    iput-object p1, p0, Lcom/android/dialer/calllog/CallListItemView;->mCallButtonClickListener:Landroid/view/View$OnClickListener;

    .line 950
    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "bold"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 683
    iput-boolean p2, p0, Lcom/android/dialer/calllog/CallListItemView;->isSectionHeader:Z

    .line 684
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 685
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 687
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 688
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 689
    iget-object v3, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallListItemView;->isSectionHeader:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 691
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 692
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallListItemView;->addView(Landroid/view/View;)V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderDivider:Landroid/view/View;

    if-nez v0, :cond_1

    .line 695
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderDivider:Landroid/view/View;

    .line 696
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderDivider:Landroid/view/View;

    iget v3, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderUnderlineColor:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 697
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallListItemView;->addView(Landroid/view/View;)V

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 701
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 702
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 703
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 704
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderVisible:Z

    .line 715
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 689
    goto :goto_0

    .line 707
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 708
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 710
    :cond_4
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderDivider:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 711
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 713
    :cond_5
    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallListItemView;->mHeaderVisible:Z

    goto :goto_1
.end method

.method public setSubscription(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallListItemView;->getSubscriptionView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mSubscriptionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/dialer/calllog/CallListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
