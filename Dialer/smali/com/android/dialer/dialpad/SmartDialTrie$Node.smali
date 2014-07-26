.class Lcom/android/dialer/dialpad/SmartDialTrie$Node;
.super Ljava/lang/Object;
.source "SmartDialTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/dialpad/SmartDialTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 406
    return-void
.end method


# virtual methods
.method public add(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;)V
    .locals 1
    .param p1, "contact"    # Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mContents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 450
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mContents:Ljava/util/ArrayList;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method public getChild(CZ)Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    .locals 1
    .param p1, "index"    # C
    .param p2, "createIfDoesNotExist"    # Z

    .prologue
    .line 445
    add-int/lit8 v0, p1, -0x30

    invoke-virtual {p0, v0, p2}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->getChild(IZ)Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    move-result-object v0

    return-object v0
.end method

.method public getChild(IZ)Lcom/android/dialer/dialpad/SmartDialTrie$Node;
    .locals 2
    .param p1, "index"    # I
    .param p2, "createIfDoesNotExist"    # Z

    .prologue
    .line 425
    if-eqz p2, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    if-nez v0, :cond_0

    .line 427
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    new-instance v1, Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    invoke-direct {v1}, Lcom/android/dialer/dialpad/SmartDialTrie$Node;-><init>()V

    aput-object v1, v0, p1

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    if-nez v0, :cond_1

    .line 434
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChildrenSize()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    if-nez v0, :cond_0

    .line 410
    const/4 v0, -0x1

    .line 412
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mChildren:[Lcom/android/dialer/dialpad/SmartDialTrie$Node;

    array-length v0, v0

    goto :goto_0
.end method

.method public getContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialTrie$Node;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method
