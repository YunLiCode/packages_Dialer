.class Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;
.super Ljava/lang/Object;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ContactTileView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/PhoneFavoriteFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileAdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;


# direct methods
.method private constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/list/PhoneFavoriteFragment;Lcom/android/dialer/list/PhoneFavoriteFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/dialer/list/PhoneFavoriteFragment;
    .param p2, "x1"    # Lcom/android/dialer/list/PhoneFavoriteFragment$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;-><init>(Lcom/android/dialer/list/PhoneFavoriteFragment;)V

    return-void
.end method


# virtual methods
.method public getApproximateTileWidth()I
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    invoke-virtual {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;
    invoke-static {v1}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$000(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getColumnCount()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public onCallNumberDirectly(Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1100(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1100(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;->onCallNumberDirectly(Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method public onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "targetRect"    # Landroid/graphics/Rect;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1100(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/dialer/list/PhoneFavoriteFragment$ContactTileAdapterListener;->this$0:Lcom/android/dialer/list/PhoneFavoriteFragment;

    # getter for: Lcom/android/dialer/list/PhoneFavoriteFragment;->mListener:Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;
    invoke-static {v0}, Lcom/android/dialer/list/PhoneFavoriteFragment;->access$1100(Lcom/android/dialer/list/PhoneFavoriteFragment;)Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/dialer/list/PhoneFavoriteFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    .line 159
    :cond_0
    return-void
.end method
