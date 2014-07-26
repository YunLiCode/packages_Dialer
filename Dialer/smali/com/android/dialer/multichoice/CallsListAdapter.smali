.class public Lcom/android/dialer/multichoice/CallsListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;
.source "CallsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/multichoice/CallsListAdapter$CallsQuery;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final groupedCalls:Landroid/net/Uri;


# instance fields
.field private final mUnknownNameText:Ljava/lang/CharSequence;

.field private modePickUniq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const-class v0, Lcom/android/dialer/multichoice/CallsListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/multichoice/CallsListAdapter;->TAG:Ljava/lang/String;

    .line 82
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "distinct"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/multichoice/CallsListAdapter;->groupedCalls:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/multichoice/CallsListAdapter;->modePickUniq:Z

    .line 88
    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/android/dialer/multichoice/CallsListAdapter;->setDefaultFilterHeaderText(I)V

    .line 89
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/multichoice/CallsListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 90
    return-void
.end method

.method private bindDateAndType(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/CallsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 198
    .local v0, "context":Landroid/content/Context;
    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/dialer/multichoice/CallsListAdapter;->getCallTypeIcon(I)I

    move-result v7

    .line 199
    .local v7, "typeIcon":I
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/CallsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    .line 201
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 203
    .local v1, "date":J
    const v4, 0x10015

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x80

    :goto_0
    or-int v5, v4, v3

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .line 207
    .local v6, "dateText":Ljava/lang/String;
    invoke-virtual {p1, v6}, Lcom/android/contacts/common/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    .line 208
    return-void

    .line 203
    .end local v6    # "dateText":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x40

    goto :goto_0
.end method

.method private getCallTypeIcon(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 176
    const/4 v0, -0x1

    .line 177
    .local v0, "resId":I
    packed-switch p1, :pswitch_data_0

    .line 191
    sget-object v1, Lcom/android/dialer/multichoice/CallsListAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal call type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return v0

    .line 179
    :pswitch_0
    const v0, 0x7f020048

    .line 180
    goto :goto_0

    .line 182
    :pswitch_1
    const v0, 0x7f02004a

    .line 183
    goto :goto_0

    .line 185
    :pswitch_2
    const v0, 0x7f020049

    .line 186
    goto :goto_0

    .line 188
    :pswitch_3
    const v0, 0x7f02004b

    .line 189
    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x0

    .line 222
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "number":Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/dialer/calllog/PhoneNumberHelper;

    invoke-virtual {p0}, Lcom/android/dialer/multichoice/CallsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 226
    .local v0, "displayNumber":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .end local v0    # "displayNumber":Ljava/lang/CharSequence;
    .end local v1    # "number":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/CallsListAdapter;->getContactNameDisplayOrder()I

    move-result v2

    invoke-virtual {p1, p2, v3, v2}, Lcom/android/contacts/common/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    goto :goto_0
.end method

.method protected bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x3

    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, "label":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    const-string v3, "-"

    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 173
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 167
    .local v2, "type":I
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "customLabel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/CallsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 171
    .end local v0    # "customLabel":Ljava/lang/String;
    .end local v2    # "type":I
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 172
    const/4 v3, 0x1

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/common/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    goto :goto_0
.end method

.method protected bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 5
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I

    .prologue
    const/4 v4, 0x4

    .line 233
    const-wide/16 v0, 0x0

    .line 234
    .local v0, "photoId":J
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 235
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 238
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v2

    .line 239
    .local v2, "photoView":Landroid/widget/ImageView;
    const v3, 0x7f0a0013

    invoke-virtual {p0, p3}, Lcom/android/dialer/multichoice/CallsListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/CallsListAdapter;->getPhotoLoader()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 241
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 4
    .param p1, "view"    # Lcom/android/contacts/common/list/ContactListItemView;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 211
    invoke-virtual {p0}, Lcom/android/dialer/multichoice/CallsListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/dialer/multichoice/CallsListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v0

    .line 213
    .local v0, "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    iget-boolean v3, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v3, :cond_0

    iget-object v1, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 214
    iget-boolean v1, v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->lastInSection:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    .line 219
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :goto_1
    return-void

    .line 214
    .restart local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 216
    .end local v0    # "placement":Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    :cond_2
    invoke-virtual {p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 151
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView;

    .line 152
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    invoke-virtual {p0, v0, p4}, Lcom/android/dialer/multichoice/CallsListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/common/list/ContactListItemView;I)V

    .line 153
    invoke-virtual {p0, v0, p3}, Lcom/android/dialer/multichoice/CallsListAdapter;->bindName(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 154
    invoke-direct {p0, v0, p3}, Lcom/android/dialer/multichoice/CallsListAdapter;->bindDateAndType(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 155
    invoke-virtual {p0, v0, p3, p4}, Lcom/android/dialer/multichoice/CallsListAdapter;->bindPhoto(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    .line 156
    invoke-virtual {p0, v0, p3}, Lcom/android/dialer/multichoice/CallsListAdapter;->bindPhoneNumber(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 157
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 5
    .param p1, "loader"    # Landroid/content/CursorLoader;
    .param p2, "directoryId"    # J

    .prologue
    .line 102
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    .line 103
    sget-object v2, Lcom/android/dialer/multichoice/CallsListAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CallsListAdapter is not ready for non-default directory ID (directoryId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    iget-boolean v2, p0, Lcom/android/dialer/multichoice/CallsListAdapter;->modePickUniq:Z

    if-eqz v2, :cond_2

    sget-object v0, Lcom/android/dialer/multichoice/CallsListAdapter;->groupedCalls:Landroid/net/Uri;

    .line 109
    .local v0, "baseUri":Landroid/net/Uri;
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 111
    .local v1, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 112
    # getter for: Lcom/android/dialer/multichoice/CallsListAdapter$CallsQuery;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/dialer/multichoice/CallsListAdapter$CallsQuery;->access$000()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 113
    iget-boolean v2, p0, Lcom/android/dialer/multichoice/CallsListAdapter;->modePickUniq:Z

    if-eqz v2, :cond_1

    .line 114
    const-string v2, "MAX(date) DESC, COUNT(number) DESC"

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 116
    :cond_1
    return-void

    .line 108
    .end local v0    # "baseUri":Landroid/net/Uri;
    .end local v1    # "builder":Landroid/net/Uri$Builder;
    :cond_2
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getContactUri(I)Landroid/net/Uri;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/dialer/multichoice/CallsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 130
    .local v2, "item":Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 131
    const/4 v4, 0x0

    .line 135
    :goto_0
    return-object v4

    .line 133
    :cond_0
    const/16 v4, 0xa

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 134
    .local v0, "contactId":J
    const/16 v4, 0xb

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "lookupKey":Ljava/lang/String;
    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0
.end method

.method public getPhoneNumber(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/dialer/multichoice/CallsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 125
    .local v0, "item":Landroid/database/Cursor;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 141
    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    .local v0, "view":Lcom/android/contacts/common/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/dialer/multichoice/CallsListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 146
    return-object v0
.end method

.method public setPickUnique(Z)V
    .locals 0
    .param p1, "unique"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/dialer/multichoice/CallsListAdapter;->modePickUniq:Z

    .line 98
    return-void
.end method
