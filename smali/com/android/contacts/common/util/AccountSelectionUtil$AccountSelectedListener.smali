.class public Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;
.super Ljava/lang/Object;
.source "AccountSelectionUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/AccountSelectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountSelectedListener"
.end annotation


# instance fields
.field protected final mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    const-string v0, "AccountSelectionUtil"

    const-string v1, "The size of Account list is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    .line 75
    iput p3, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    .line 76
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 79
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 80
    iget-object v1, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mResId:I

    iget-object v0, p0, Lcom/android/contacts/common/util/AccountSelectionUtil$AccountSelectedListener;->mAccountList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-static {v1, v2, v0}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;)V

    .line 81
    return-void
.end method
