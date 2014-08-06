.class public Lcom/android/dialer/calllog/MultiSlotAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiSlotAdapter.java"


# instance fields
.field private icons:[I

.field private mContext:Landroid/content/Context;

.field private mPosition:I

.field private slots:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x3

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->icons:[I

    .line 54
    iput v3, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mPosition:I

    .line 60
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->slots:[Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->slots:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 65
    invoke-direct {p0}, Lcom/android/dialer/calllog/MultiSlotAdapter;->initSlots()V

    .line 68
    iget-object v0, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "subscription"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mPosition:I

    .line 69
    iget v0, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mPosition:I

    if-ne v4, v0, :cond_0

    .line 70
    iput v3, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mPosition:I

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget v0, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mPosition:I

    goto :goto_0

    .line 49
    nop

    :array_0
    .array-data 4
        0x7f0200a1
        0x7f0200a0
        0x7f0200a2
    .end array-data
.end method

.method private initSlots()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 76
    iget-object v0, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->slots:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getMultiSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 77
    iget-object v0, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->slots:[Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/contacts/common/util/ContactPhoneUtils;->getMultiSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 78
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->slots:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->slots:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 89
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 93
    move-object v2, p2

    .line 94
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    .line 95
    iget-object v3, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04001f

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 96
    :cond_0
    const v3, 0x7f0a0052

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 97
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->icons:[I

    aget v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    const v3, 0x7f0a008c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    .local v1, "msg":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->slots:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget v3, p0, Lcom/android/dialer/calllog/MultiSlotAdapter;->mPosition:I

    if-ne v3, p1, :cond_1

    .line 103
    const v3, -0xbbbbbc

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    :goto_0
    return-object v2

    .line 105
    :cond_1
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
