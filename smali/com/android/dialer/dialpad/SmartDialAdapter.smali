.class public Lcom/android/dialer/dialpad/SmartDialAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmartDialAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHotlineHelper:Lcom/android/dialer/calllog/HotlineHelper;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mNameHighlightedTextColor:I

.field private final mNumberHighlightedTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/dialer/dialpad/SmartDialAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mActivity:Landroid/app/Activity;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    .line 42
    invoke-static {p1}, Lcom/android/dialer/calllog/HotlineHelper;->getInstance(Landroid/content/Context;)Lcom/android/dialer/calllog/HotlineHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mHotlineHelper:Lcom/android/dialer/calllog/HotlineHelper;

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mNameHighlightedTextColor:I

    .line 45
    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mNumberHighlightedTextColor:I

    .line 46
    return-void
.end method

.method private getHighlightName(Lcom/android/dialer/dialpad/SmartDialEntry;)Landroid/text/SpannableString;
    .locals 7
    .param p1, "entry"    # Lcom/android/dialer/dialpad/SmartDialEntry;

    .prologue
    .line 116
    sget-object v3, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHightlightName("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/dialer/dialpad/SmartDialEntry;->displayName:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Landroid/text/SpannableString;

    iget-object v3, p1, Lcom/android/dialer/dialpad/SmartDialEntry;->displayName:Ljava/lang/CharSequence;

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 118
    .local v0, "displayName":Landroid/text/SpannableString;
    iget-object v3, p1, Lcom/android/dialer/dialpad/SmartDialEntry;->matchPositions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    .line 119
    .local v2, "p":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    sget-object v3, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget v3, v2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    iget v4, v2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    if-ge v3, v4, :cond_0

    .line 121
    iget v3, v2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 122
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    iput v3, v2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    .line 126
    :cond_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mNameHighlightedTextColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v4, v2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    iget v5, v2, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 130
    .end local v2    # "p":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    :cond_2
    return-object v0
.end method

.method private getHightlightNumber(Lcom/android/dialer/dialpad/SmartDialEntry;)Landroid/text/SpannableString;
    .locals 6
    .param p1, "entry"    # Lcom/android/dialer/dialpad/SmartDialEntry;

    .prologue
    .line 134
    iget-object v0, p1, Lcom/android/dialer/dialpad/SmartDialEntry;->phoneNumberMatchPosition:Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    .line 135
    .local v0, "p":Lcom/android/dialer/dialpad/SmartDialMatchPosition;
    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p1, Lcom/android/dialer/dialpad/SmartDialEntry;->phoneNumber:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 136
    .local v1, "phoneNumber":Landroid/text/SpannableString;
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    iget v3, v0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    if-ge v2, v3, :cond_1

    .line 137
    iget v2, v0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 138
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    iput v2, v0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    .line 140
    :cond_0
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mNumberHighlightedTextColor:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v3, v0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->start:I

    iget v4, v0, Lcom/android/dialer/dialpad/SmartDialMatchPosition;->end:I

    const/16 v5, 0x21

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 143
    :cond_1
    return-object v1
.end method

.method private getTypeLabel(Lcom/android/dialer/dialpad/SmartDialEntry;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "entry"    # Lcom/android/dialer/dialpad/SmartDialEntry;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/dialer/dialpad/SmartDialEntry;->type:I

    iget-object v2, p1, Lcom/android/dialer/dialpad/SmartDialEntry;->label:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mEntryList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialAdapter;->notifyDataSetChanged()V

    .line 155
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mEntryList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mEntryList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/SmartDialEntry;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mEntryList:Ljava/util/List;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/SmartDialEntry;

    iget-wide v0, v0, Lcom/android/dialer/dialpad/SmartDialEntry;->contactId:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 65
    if-nez p2, :cond_0

    .line 66
    iget-object v7, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f04001a

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 68
    :cond_0
    iget-object v7, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/dialpad/SmartDialEntry;

    .line 69
    .local v5, "entry":Lcom/android/dialer/dialpad/SmartDialEntry;
    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    const v7, 0x7f0a007e

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/QuickContactBadge;

    .line 72
    .local v4, "contactPhoto":Landroid/widget/QuickContactBadge;
    const v7, 0x7f0a0080

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, "contactName":Landroid/widget/TextView;
    const v7, 0x7f0a0081

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    .local v1, "contactLabel":Landroid/widget/TextView;
    const v7, 0x7f0a0082

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 75
    .local v3, "contactNumber":Landroid/widget/TextView;
    const v7, 0x7f0a0083

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 76
    .local v0, "actionView":Landroid/widget/ImageView;
    iget-object v7, v5, Lcom/android/dialer/dialpad/SmartDialEntry;->phoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v7, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mHotlineHelper:Lcom/android/dialer/calllog/HotlineHelper;

    iget-object v8, v5, Lcom/android/dialer/dialpad/SmartDialEntry;->phoneNumber:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Lcom/android/dialer/calllog/HotlineHelper;->getHotlineByNumber(Ljava/lang/CharSequence;)Lcom/android/dialer/calllog/HotlineHelper$Hotline;

    move-result-object v6

    .line 80
    .local v6, "hotline":Lcom/android/dialer/calllog/HotlineHelper$Hotline;
    iget-object v7, v5, Lcom/android/dialer/dialpad/SmartDialEntry;->displayName:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 81
    if-eqz v6, :cond_1

    iget v7, v6, Lcom/android/dialer/calllog/HotlineHelper$Hotline;->nameResId:I

    if-lez v7, :cond_1

    .line 82
    iget v7, v6, Lcom/android/dialer/calllog/HotlineHelper$Hotline;->nameResId:I

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 83
    invoke-direct {p0, v5}, Lcom/android/dialer/dialpad/SmartDialAdapter;->getHightlightNumber(Lcom/android/dialer/dialpad/SmartDialEntry;)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-direct {p0, v5}, Lcom/android/dialer/dialpad/SmartDialAdapter;->getTypeLabel(Lcom/android/dialer/dialpad/SmartDialEntry;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :goto_0
    iget-wide v7, v5, Lcom/android/dialer/dialpad/SmartDialEntry;->contactId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 104
    iget-object v7, v5, Lcom/android/dialer/dialpad/SmartDialEntry;->contactUri:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 109
    :goto_1
    const v7, 0x7f0a0013

    iget-object v8, v5, Lcom/android/dialer/dialpad/SmartDialEntry;->contactUri:Landroid/net/Uri;

    invoke-virtual {v4, v7, v8}, Landroid/widget/QuickContactBadge;->setTag(ILjava/lang/Object;)V

    .line 110
    iget-object v7, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-wide v8, v5, Lcom/android/dialer/dialpad/SmartDialEntry;->photoId:J

    invoke-virtual {v7, v4, v8, v9, v11}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 112
    return-object p2

    .line 89
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/dialer/dialpad/SmartDialAdapter;->getHightlightNumber(Lcom/android/dialer/dialpad/SmartDialEntry;)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/dialer/dialpad/SmartDialAdapter;->getHighlightName(Lcom/android/dialer/dialpad/SmartDialEntry;)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-direct {p0, v5}, Lcom/android/dialer/dialpad/SmartDialAdapter;->getHightlightNumber(Lcom/android/dialer/dialpad/SmartDialEntry;)Landroid/text/SpannableString;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-direct {p0, v5}, Lcom/android/dialer/dialpad/SmartDialAdapter;->getTypeLabel(Lcom/android/dialer/dialpad/SmartDialEntry;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v7, v5, Lcom/android/dialer/dialpad/SmartDialEntry;->phoneNumber:Ljava/lang/CharSequence;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v11}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 172
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 168
    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0083
        :pswitch_0
    .end packed-switch
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/dialpad/SmartDialEntry;>;"
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialAdapter;->mEntryList:Ljava/util/List;

    .line 159
    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialAdapter;->notifyDataSetChanged()V

    .line 160
    return-void
.end method
