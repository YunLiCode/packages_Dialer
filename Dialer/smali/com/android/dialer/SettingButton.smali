.class public Lcom/android/dialer/SettingButton;
.super Landroid/widget/RelativeLayout;
.source "SettingButton.java"


# instance fields
.field private mAdd:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mName:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mSetColor:I

.field private mTitle:Landroid/widget/TextView;

.field private mUnSetColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/SettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/android/dialer/SettingButton;->mContext:Landroid/content/Context;

    .line 34
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 36
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04002b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/SettingButton;->mSetColor:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/dialer/SettingButton;->mUnSetColor:I

    .line 40
    return-void
.end method


# virtual methods
.method public clearContactInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 98
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mAdd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mAdd:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dialer/SettingButton;->mUnSetColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f0a008d

    invoke-virtual {p0, v0}, Lcom/android/dialer/SettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/SettingButton;->mTitle:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/android/dialer/SettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/SettingButton;->mName:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0a007e

    invoke-virtual {p0, v0}, Lcom/android/dialer/SettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/dialer/SettingButton;->mPhoto:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f0a00a2

    invoke-virtual {p0, v0}, Lcom/android/dialer/SettingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dialer/SettingButton;->mAdd:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 54
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 55
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 60
    invoke-super {p0, p1, p1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 61
    return-void
.end method

.method public setContactInfo(Ljava/lang/String;JLandroid/net/Uri;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photoId"    # J
    .param p4, "lookupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 69
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mAdd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mAdd:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    const-string v0, "SettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1, p4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/SettingButton;->mPhoto:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dialer/SettingButton;->mSetColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    :cond_1
    return-void
.end method

.method public setContactInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mAdd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mAdd:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mPhoto:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/dialer/SettingButton;->mSetColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "SettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/dialer/SettingButton;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method
