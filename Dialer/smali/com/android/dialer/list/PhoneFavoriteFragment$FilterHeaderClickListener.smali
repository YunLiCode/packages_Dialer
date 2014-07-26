.class Lcom/android/dialer/list/PhoneFavoriteFragment$FilterHeaderClickListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHeaderClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$FilterHeaderClickListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;
    .param p2, "x1"    # Lcom/android/dialer/list/PhoneFavoriteFragment$1;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoriteFragment$FilterHeaderClickListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$FilterHeaderClickListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$FilterHeaderClickListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;
    invoke-static {v2}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1200(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/AccountFilterUtil;->startAccountFilterActivityForResult(Landroid/app/Fragment;ILcom/android/contacts/common/list/ContactListFilter;)V

    .line 181
    return-void
.end method
