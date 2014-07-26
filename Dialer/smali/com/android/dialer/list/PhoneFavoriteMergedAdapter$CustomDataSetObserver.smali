.class Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "PhoneFavoriteMergedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;
    .param p2, "x1"    # Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$1;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;-><init>(Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter$CustomDataSetObserver;->this$0:Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoriteMergedAdapter;->notifyDataSetChanged()V

    .line 44
    return-void
.end method
