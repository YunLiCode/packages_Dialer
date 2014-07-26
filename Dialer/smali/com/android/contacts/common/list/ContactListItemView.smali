.class public Lcom/android/contacts/common/list/ContactListItemView;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    }
.end annotation


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mAccountView:Landroid/widget/ImageView;

.field private mAccountViewIconSize:I

.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mContactsCountTextColor:I

.field private mCountView:Landroid/widget/TextView;

.field private mCountViewTextSize:I

.field private final mDataBuffer:Landroid/database/CharArrayBuffer;

.field private mDataView:Landroid/widget/TextView;

.field private mDataViewHeight:I

.field private mDataViewWidthWeight:I

.field private mDefaultPhotoViewSize:I

.field private mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mGapBetweenImageAndText:I

.field private mGapBetweenLabelAndData:I

.field private mHeaderBackgroundHeight:I

.field private mHeaderDivider:Landroid/view/View;

.field private mHeaderTextColor:I

.field private mHeaderTextIndent:I

.field private mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderUnderlineColor:I

.field private mHeaderUnderlineHeight:I

.field private mHeaderVisible:Z

.field private mHighlightedPrefix:Ljava/lang/String;

.field private mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerVisible:Z

.field private mKeepHorizontalPaddingForPhotoView:Z

.field private mKeepVerticalPaddingForPhotoView:Z

.field private mLabelAndDataViewMaxHeight:I

.field private mLabelView:Landroid/widget/TextView;

.field private mLabelViewHeight:I

.field private mLabelViewWidthWeight:I

.field private mNameTextView:Landroid/widget/TextView;

.field private mNameTextViewHeight:I

.field private final mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

.field private mPhoneticNameTextView:Landroid/widget/TextView;

.field private mPhoneticNameTextViewHeight:I

.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mPhotoViewWidthAndHeightAreReady:Z

.field private mPreferredHeight:I

.field private mPrefixHighlighter:Lcom/android/contacts/common/format/PrefixHighlighter;

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private mPresenceIconMargin:I

.field private mPresenceIconSize:I

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactEnabled:Z

.field private mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private mSelectionBoundsMarginLeft:I

.field private mSelectionBoundsMarginRight:I

.field private mSnippetTextViewHeight:I

.field private mSnippetView:Landroid/widget/TextView;

.field private mStatusTextViewHeight:I

.field private mStatusView:Landroid/widget/TextView;

.field private mTextIndent:I

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1404
    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0xc

    const/high16 v3, -0x1000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 221
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 80
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 81
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 82
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 83
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    .line 84
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 85
    iput v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextColor:I

    .line 86
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    .line 87
    iput v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextSize:I

    .line 88
    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    .line 89
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineColor:I

    .line 90
    iput v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountViewTextSize:I

    .line 91
    iput v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContactsCountTextColor:I

    .line 92
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    .line 99
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 103
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 110
    iput-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 137
    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 142
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 146
    iput-boolean v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 163
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 189
    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 198
    const/16 v0, 0x24

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountViewIconSize:I

    .line 209
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v5}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 210
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v5}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 222
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    .line 224
    new-instance v0, Lcom/android/contacts/common/format/PrefixHighlighter;

    const v1, -0xff0100

    invoke-direct {v0, v1}, Lcom/android/contacts/common/format/PrefixHighlighter;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPrefixHighlighter:Lcom/android/contacts/common/format/PrefixHighlighter;

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v7, 0x3

    const/high16 v5, -0x1000000

    const/16 v4, 0xc

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 228
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 81
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 82
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 83
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    .line 84
    const/16 v2, 0x10

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 85
    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextColor:I

    .line 86
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    .line 87
    iput v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextSize:I

    .line 88
    iput v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    .line 89
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineColor:I

    .line 90
    iput v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountViewTextSize:I

    .line 91
    iput v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContactsCountTextColor:I

    .line 92
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    .line 99
    iput v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 103
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 110
    iput-boolean v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 137
    invoke-static {v6}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 142
    const/16 v2, 0x1e

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 146
    iput-boolean v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 163
    iput v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 189
    iput-boolean v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 198
    const/16 v2, 0x24

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountViewIconSize:I

    .line 209
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 210
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 214
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 229
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/common/R$styleable;->ContactListItemView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 233
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .line 235
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 238
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 241
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 244
    const/16 v2, 0xa

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 247
    const/16 v2, 0xb

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 250
    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    .line 253
    const/16 v2, 0xd

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    .line 255
    const/16 v2, 0xe

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 257
    const/16 v2, 0x11

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    .line 259
    const/16 v2, 0x12

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextColor:I

    .line 261
    const/16 v2, 0x13

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextSize:I

    .line 263
    const/16 v2, 0x14

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 265
    const/16 v2, 0x15

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    .line 268
    const/16 v2, 0x16

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineColor:I

    .line 271
    const/16 v2, 0x18

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    .line 273
    const/16 v2, 0x19

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountViewTextSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountViewTextSize:I

    .line 276
    const/16 v2, 0x17

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContactsCountTextColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContactsCountTextColor:I

    .line 279
    const/16 v2, 0x1a

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 281
    const/16 v2, 0x1b

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 285
    const/16 v2, 0x1c

    iget v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountViewIconSize:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountViewIconSize:I

    .line 288
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/contacts/common/list/ContactListItemView;->setPaddingRelative(IIII)V

    .line 298
    const/16 v2, 0x10

    const v3, -0xff0100

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 300
    .local v1, "prefixHighlightColor":I
    new-instance v2, Lcom/android/contacts/common/format/PrefixHighlighter;

    invoke-direct {v2, v1}, Lcom/android/contacts/common/format/PrefixHighlighter;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPrefixHighlighter:Lcom/android/contacts/common/format/PrefixHighlighter;

    .line 301
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 303
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 304
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    .line 305
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 307
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerHeight:I

    .line 309
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 317
    :cond_1
    return-void
.end method

.method private ensurePhotoViewSize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 692
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    if-nez v0, :cond_2

    .line 693
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    iput v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    .line 694
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 695
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-nez v0, :cond_0

    .line 696
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    .line 698
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    if-nez v0, :cond_1

    .line 699
    iput v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    .line 703
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 705
    :cond_2
    return-void
.end method

.method private getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 722
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 723
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 724
    return-object v0
.end method

.method public static final getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;
    .locals 1
    .param p0, "opposite"    # Z

    .prologue
    .line 125
    sget-object v0, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-object v0
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 1167
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method private setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1024
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 1027
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1028
    .local v0, "spannable":Landroid/text/SpannableString;
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1030
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    .end local v0    # "spannable":Landroid/text/SpannableString;
    :goto_0
    return-void

    .line 1032
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMarqueeText(Landroid/widget/TextView;[CI)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # [C
    .param p3, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 1016
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 1017
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1021
    :goto_0
    return-void

    .line 1019
    :cond_0
    invoke-virtual {p1, p2, v2, p3}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 678
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 679
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 680
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectionBoundsMarginLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 681
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectionBoundsMarginRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 682
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 765
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 770
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 774
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 775
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 729
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 730
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 738
    :cond_1
    return-void
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1041
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    .line 1042
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1043
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1044
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1045
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1046
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1047
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    .prologue
    .line 712
    iget v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 973
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 974
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    .line 975
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 976
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 977
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 978
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_1

    .line 980
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 981
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 985
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 986
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 987
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 907
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 908
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 909
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 910
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 913
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 914
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 915
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 916
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    .line 917
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 853
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 854
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 856
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 857
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 831
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_0

    .line 832
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_2

    .line 835
    new-instance v0, Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 836
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 838
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f08003f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 843
    iput-boolean v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1087
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    .line 1088
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1089
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1090
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1091
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1092
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1093
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1094
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideDisplayName()V
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1193
    :cond_0
    return-void
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 685
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
    .line 749
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 750
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 758
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 479
    sub-int v6, p5, p3

    .line 480
    .local v6, "height":I
    sub-int v18, p4, p2

    .line 483
    .local v18, "width":I
    const/16 v16, 0x0

    .line 484
    .local v16, "topBound":I
    move v4, v6

    .line 485
    .local v4, "bottomBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v9

    .line 486
    .local v9, "leftBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v19

    sub-int v12, v18, v19

    .line 488
    .local v12, "rightBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->isLayoutRtl()Z

    move-result v8

    .line 491
    .local v8, "isLayoutRtl":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderVisible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v9, v1, v12, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v20

    sub-int v20, v12, v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 499
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v9, v1, v12, v2}, Landroid/view/View;->layout(IIII)V

    .line 503
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v16, v16, v19

    .line 507
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerHeight:I

    move/from16 v20, v0

    sub-int v20, v6, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1, v12, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 513
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerHeight:I

    move/from16 v19, v0

    sub-int v4, v4, v19

    .line 516
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v16

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 518
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ContactListItemView;->isActivated()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 522
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 527
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    move-object/from16 v19, v0

    if-eqz v19, :cond_12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 528
    .local v11, "photoView":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 530
    if-eqz v11, :cond_13

    .line 532
    sub-int v19, v4, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v10, v16, v19

    .line 533
    .local v10, "photoTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    add-int v19, v19, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v20, v0

    add-int v20, v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v9, v10, v0, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v9, v9, v19

    .line 563
    .end local v10    # "photoTop":I
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountViewIconSize:I

    move/from16 v20, v0

    sub-int v20, v12, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountViewIconSize:I

    move/from16 v21, v0

    sub-int v21, v4, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    move/from16 v22, v0

    sub-int v22, v12, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v23, v0

    sub-int v23, v4, v23

    invoke-virtual/range {v19 .. v23}, Landroid/widget/ImageView;->layout(IIII)V

    .line 567
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountViewIconSize:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    sub-int v12, v12, v19

    .line 571
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v20, v0

    add-int v17, v19, v20

    .line 573
    .local v17, "totalTextHeight":I
    add-int v19, v4, v16

    sub-int v19, v19, v17

    div-int/lit8 v15, v19, 0x2

    .line 577
    .local v15, "textTopBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v9, v15, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 582
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 586
    :cond_7
    if-eqz v8, :cond_17

    .line 587
    move v14, v12

    .line 588
    .local v14, "statusRightBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    .line 590
    .local v7, "iconWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    sub-int v20, v12, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v15, v12, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    move/from16 v19, v0

    add-int v19, v19, v7

    sub-int v14, v14, v19

    .line 598
    .end local v7    # "iconWidth":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v9, v15, v14, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 624
    .end local v14    # "statusRightBound":I
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 625
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 629
    :cond_b
    move v5, v9

    .line 630
    .local v5, "dataLeftBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v9, v15, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 635
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 639
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_19

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v20

    sub-int v20, v12, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v22, v0

    add-int v22, v22, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    sub-int v12, v12, v19

    .line 658
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v12, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 664
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 665
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v19, v0

    add-int v15, v15, v19

    .line 668
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v9, v15, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 674
    :cond_11
    return-void

    .line 527
    .end local v5    # "dataLeftBound":I
    .end local v11    # "photoView":Landroid/view/View;
    .end local v15    # "textTopBound":I
    .end local v17    # "totalTextHeight":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 539
    .restart local v11    # "photoView":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 541
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int v9, v9, v19

    goto/16 :goto_1

    .line 545
    :cond_14
    if-eqz v11, :cond_16

    .line 547
    sub-int v19, v4, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    div-int/lit8 v19, v19, 0x2

    add-int v10, v16, v19

    .line 548
    .restart local v10    # "photoTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    sub-int v19, v12, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v20, v0

    add-int v20, v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v10, v12, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v20, v0

    add-int v19, v19, v20

    sub-int v12, v12, v19

    .line 560
    .end local v10    # "photoTop":I
    :cond_15
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    move/from16 v19, v0

    add-int v9, v9, v19

    goto/16 :goto_1

    .line 554
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15

    .line 556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v20, v0

    add-int v19, v19, v20

    sub-int v12, v12, v19

    goto :goto_4

    .line 605
    .restart local v15    # "textTopBound":I
    .restart local v17    # "totalTextHeight":I
    :cond_17
    move v13, v9

    .line 606
    .local v13, "statusLeftBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    .line 608
    .restart local v7    # "iconWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    add-int v20, v9, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v9, v15, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 613
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    move/from16 v19, v0

    add-int v19, v19, v7

    add-int v13, v13, v19

    .line 616
    .end local v7    # "iconWidth":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v13, v15, v12, v1}, Landroid/widget/TextView;->layout(IIII)V

    goto/16 :goto_2

    .line 649
    .end local v13    # "statusLeftBound":I
    .restart local v5    # "dataLeftBound":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v19

    add-int v5, v9, v19

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v20, v0

    add-int v20, v20, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v21, v0

    add-int v21, v21, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v9, v1, v5, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    move/from16 v19, v0

    add-int v5, v5, v19

    goto/16 :goto_3
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 331
    const/4 v9, 0x0

    invoke-static {v9, p1}, Lcom/android/contacts/common/list/ContactListItemView;->resolveSize(II)I

    move-result v7

    .line 333
    .local v7, "specWidth":I
    iget-boolean v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v9, :cond_c

    .line 334
    iget v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int v6, v9, v10

    .line 339
    .local v6, "preferredHeight":I
    :goto_0
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    .line 340
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 341
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    .line 342
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    .line 343
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 344
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 345
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 347
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactListItemView;->ensurePhotoViewSize()V

    .line 352
    iget v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    if-gtz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v9, :cond_d

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidth:I

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v10, v11

    sub-int v0, v9, v10

    .line 359
    .local v0, "effectiveWidth":I
    :goto_1
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 360
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/ImageView;->measure(II)V

    .line 362
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    sub-int/2addr v0, v9

    .line 367
    :cond_1
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 369
    move v5, v0

    .line 370
    .local v5, "nameTextWidth":I
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v10, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-eq v9, v10, :cond_2

    .line 371
    iget v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mTextIndent:I

    sub-int/2addr v5, v9

    .line 373
    :cond_2
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/high16 v10, 0x40000000

    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 376
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    .line 379
    .end local v5    # "nameTextWidth":I
    :cond_3
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 380
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/high16 v10, 0x40000000

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 383
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 390
    :cond_4
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 393
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    sget-object v10, Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    if-ne v9, v10, :cond_e

    const/high16 v4, 0x40000000

    .line 395
    .local v4, "mode":I
    :goto_2
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 397
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    .line 398
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 403
    .end local v4    # "mode":I
    .local v3, "labelWidth":I
    :goto_3
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 404
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    sub-int v10, v0, v3

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mGapBetweenLabelAndData:I

    sub-int/2addr v10, v11

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 407
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    .line 410
    :cond_5
    iget v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelViewHeight:I

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataViewHeight:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 412
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 413
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/high16 v10, 0x40000000

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 416
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 420
    :cond_6
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 421
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    const/high16 v11, 0x40000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconSize:I

    const/high16 v12, 0x40000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/ImageView;->measure(II)V

    .line 424
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 427
    :cond_7
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 430
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 431
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v0, v9

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIconMargin:I

    sub-int v8, v9, v10

    .line 436
    .local v8, "statusWidth":I
    :goto_4
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/high16 v10, 0x40000000

    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 438
    iget v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 443
    .end local v8    # "statusWidth":I
    :cond_8
    iget v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextViewHeight:I

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int v2, v9, v10

    .line 448
    .local v2, "height":I
    iget v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewHeight:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 451
    iget-boolean v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v9, :cond_9

    .line 452
    iget v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int/2addr v2, v9

    .line 456
    :cond_9
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 459
    iget-boolean v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v9, :cond_b

    .line 460
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v10

    sub-int v1, v9, v10

    .line 461
    .local v1, "headerWidth":I
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/high16 v10, 0x40000000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    const/high16 v12, 0x40000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 464
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v9, :cond_a

    .line 465
    iget-object v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/high16 v10, -0x80000000

    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    const/high16 v12, 0x40000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/TextView;->measure(II)V

    .line 469
    :cond_a
    iget v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 471
    iget v9, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget v10, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineHeight:I

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    .line 474
    .end local v1    # "headerWidth":I
    :cond_b
    invoke-virtual {p0, v7, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setMeasuredDimension(II)V

    .line 475
    return-void

    .line 336
    .end local v0    # "effectiveWidth":I
    .end local v2    # "height":I
    .end local v3    # "labelWidth":I
    .end local v6    # "preferredHeight":I
    :cond_c
    iget v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPreferredHeight:I

    .restart local v6    # "preferredHeight":I
    goto/16 :goto_0

    .line 356
    :cond_d
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v10

    sub-int v0, v9, v10

    .restart local v0    # "effectiveWidth":I
    goto/16 :goto_1

    .line 393
    :cond_e
    const/high16 v4, -0x80000000

    goto/16 :goto_2

    .line 400
    :cond_f
    const/4 v3, 0x0

    .restart local v3    # "labelWidth":I
    goto/16 :goto_3

    .line 434
    :cond_10
    move v8, v0

    .restart local v8    # "statusWidth":I
    goto/16 :goto_4
.end method

.method public removePhotoView(ZZ)V
    .locals 2
    .param p1, "keepHorizontalPadding"    # Z
    .param p2, "keepVerticalPadding"    # Z

    .prologue
    const/4 v1, 0x0

    .line 879
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 880
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    .line 881
    iput-boolean p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    .line 882
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 884
    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 888
    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 890
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->forceLayout()V

    .line 1443
    return-void
.end method

.method public setAccount(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1454
    if-eqz p1, :cond_2

    .line 1455
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1456
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    .line 1457
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1460
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1461
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1467
    :cond_1
    :goto_0
    return-void

    .line 1463
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1464
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mAccountView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1434
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedStateSupported:Z

    .line 1435
    return-void
.end method

.method public setData([CII)V
    .locals 3
    .param p1, "text"    # [C
    .param p2, "size"    # I
    .param p3, "dataColumnIndex"    # I

    .prologue
    const/4 v2, 0x3

    .line 996
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1013
    :cond_1
    :goto_0
    return-void

    .line 1001
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 1002
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 1003
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1007
    if-ne p3, v2, :cond_1

    .line 1009
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 1010
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_0
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 782
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 783
    return-void
.end method

.method public setHighlightedPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "upperCasePrefix"    # Ljava/lang/String;

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    .line 900
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 958
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    .line 964
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 965
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1, "photoPosition"    # Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    .line 1447
    return-void
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1151
    if-eqz p1, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1153
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 1154
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1158
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1164
    :cond_1
    :goto_0
    return-void

    .line 1160
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 325
    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 8
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 789
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 790
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 791
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 792
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 793
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 794
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 795
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 796
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 798
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->isLayoutRtl()Z

    move-result v0

    .line 799
    .local v0, "isLayoutRtl":Z
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingTop()I

    move-result v4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v2

    iget v5, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    add-int/2addr v2, v5

    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 804
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 806
    .end local v0    # "isLayoutRtl":Z
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    if-nez v1, :cond_1

    .line 807
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    .line 808
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderUnderlineColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 809
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 811
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 812
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 813
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 814
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 815
    iput-boolean v7, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderVisible:Z

    .line 825
    :goto_2
    return-void

    .line 799
    .restart local v0    # "isLayoutRtl":Z
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextIndent:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getPaddingRight()I

    move-result v2

    goto :goto_1

    .line 817
    .end local v0    # "isLayoutRtl":Z
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 818
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 820
    :cond_5
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 821
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 823
    :cond_6
    iput-boolean v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHeaderVisible:Z

    goto :goto_2
.end method

.method public setSelectionBoundsHorizontalMargin(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1474
    iput p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectionBoundsMarginLeft:I

    .line 1475
    iput p2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mSelectionBoundsMarginRight:I

    .line 1476
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getStatusView()Landroid/widget/TextView;

    .line 1142
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1143
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "unknownNameText"    # Ljava/lang/CharSequence;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 321
    return-void
.end method

.method public showData(Landroid/database/Cursor;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "dataColumnIndex"    # I

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1430
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/contacts/common/list/ContactListItemView;->setData([CII)V

    .line 1431
    return-void
.end method

.method public showDisplayName(Landroid/database/Cursor;II)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "nameColumnIndex"    # I
    .param p3, "displayOrder"    # I

    .prologue
    .line 1171
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1173
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mPrefixHighlighter:Lcom/android/contacts/common/format/PrefixHighlighter;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mHighlightedPrefix:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/common/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1177
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1182
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v1, :cond_0

    .line 1183
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v3, 0x7f08003f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/common/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1186
    :cond_0
    return-void

    .line 1175
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactListItemView;->mDisabledBackgroundDrawable:Landroid/graphics/drawable/Drawable;

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
