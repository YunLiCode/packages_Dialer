.class Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PhoneNumberInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/interactions/PhoneNumberInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhoneItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInteractionType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "interactionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;>;"
    const v0, 0x7f040025

    const v1, 0x1020015

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 156
    iput p3, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;->mInteractionType:I

    .line 157
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 163
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;

    .line 164
    .local v0, "item":Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 165
    .local v1, "typeView":Landroid/widget/TextView;
    iget-wide v4, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->type:J

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItem;->label:Ljava/lang/String;

    iget v6, p0, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;->mInteractionType:I

    invoke-virtual {p0}, Lcom/android/dialer/interactions/PhoneNumberInteraction$PhoneItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getLabelForCallOrSms(Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 168
    .local v2, "value":Ljava/lang/CharSequence;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    return-object v3
.end method
