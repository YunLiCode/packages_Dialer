.class public Lcom/android/dialer/dialpad/SmartDialLoaderTask;
.super Landroid/os/AsyncTask;
.source "SmartDialLoaderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/dialpad/SmartDialLoaderTask$ContactMatch;,
        Lcom/android/dialer/dialpad/SmartDialLoaderTask$SmartDialLoaderCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/android/dialer/dialpad/SmartDialEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/dialer/dialpad/SmartDialLoaderTask$SmartDialLoaderCallback;

.field private final mContactsCache:Lcom/android/dialer/dialpad/SmartDialCache;

.field private final mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/dialer/dialpad/SmartDialLoaderTask$SmartDialLoaderCallback;Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialCache;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/dialer/dialpad/SmartDialLoaderTask$SmartDialLoaderCallback;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "cache"    # Lcom/android/dialer/dialpad/SmartDialCache;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mCallback:Lcom/android/dialer/dialpad/SmartDialLoaderTask$SmartDialLoaderCallback;

    .line 72
    new-instance v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    .line 73
    iput-object p3, p0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mContactsCache:Lcom/android/dialer/dialpad/SmartDialCache;

    .line 74
    iput-object p2, p0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mQuery:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private getContactMatches()Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mContactsCache:Lcom/android/dialer/dialpad/SmartDialCache;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/SmartDialCache;->getContacts()Lcom/android/dialer/dialpad/SmartDialTrie;

    move-result-object v23

    .line 97
    .local v23, "trie":Lcom/android/dialer/dialpad/SmartDialTrie;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mContactsCache:Lcom/android/dialer/dialpad/SmartDialCache;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/SmartDialCache;->isUserInNanpRegion()Z

    move-result v20

    .line 100
    .local v20, "matchNanp":Z
    sget-object v2, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Size of cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lcom/android/dialer/dialpad/SmartDialTrie;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v2, "Start Match"

    invoke-static {v2}, Lcom/android/contacts/common/util/StopWatch;->start(Ljava/lang/String;)Lcom/android/contacts/common/util/StopWatch;

    move-result-object v22

    .line 104
    .local v22, "stopWatch":Lcom/android/contacts/common/util/StopWatch;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    invoke-virtual {v2}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->getQuery()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/dialer/dialpad/SmartDialTrie;->getAllWithPrefix(Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v14

    .line 106
    .local v14, "allMatches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;>;"
    const-string v2, "Find matches"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 109
    new-instance v2, Lcom/android/dialer/dialpad/SmartDialCache$ContactAffinityComparator;

    invoke-direct {v2}, Lcom/android/dialer/dialpad/SmartDialCache$ContactAffinityComparator;-><init>()V

    invoke-static {v14, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    const-string v2, "Sort"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 113
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v18, "duplicates":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/dialer/dialpad/SmartDialLoaderTask$ContactMatch;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 115
    .local v15, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dialer/dialpad/SmartDialEntry;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;

    .line 116
    .local v16, "contact":Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;
    new-instance v17, Lcom/android/dialer/dialpad/SmartDialLoaderTask$ContactMatch;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->lookupKey:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->id:J

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dialer/dialpad/SmartDialLoaderTask$ContactMatch;-><init>(Lcom/android/dialer/dialpad/SmartDialLoaderTask;Ljava/lang/String;J)V

    .line 120
    .local v17, "contactMatch":Lcom/android/dialer/dialpad/SmartDialLoaderTask$ContactMatch;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 124
    :cond_1
    sget-object v2, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid contact match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :cond_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matches(Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;)Z

    move-result v21

    .line 129
    .local v21, "matches":Z
    sget-object v2, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matches: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v2, Lcom/android/dialer/dialpad/SmartDialEntry;

    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->id:J

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->lookupKey:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->photoId:J

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->displayName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->type:I

    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    invoke-virtual {v12}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->getMatchPositions()Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, v16

    iget-object v13, v0, Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->getQuery()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-static {v13, v0, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v13

    invoke-direct/range {v2 .. v13}, Lcom/android/dialer/dialpad/SmartDialEntry;-><init>(JLjava/lang/String;JLjava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/dialer/dialpad/SmartDialMatchPosition;)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_0

    .line 140
    .end local v16    # "contact":Lcom/android/dialer/dialpad/SmartDialCache$ContactNumber;
    .end local v17    # "contactMatch":Lcom/android/dialer/dialpad/SmartDialLoaderTask$ContactMatch;
    .end local v21    # "matches":Z
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/dialer/dialpad/SmartDialAdapter;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Match Complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/util/StopWatch;->stopAndLog(Ljava/lang/String;I)V

    .line 142
    return-object v15
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->doInBackground([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/dialer/dialpad/SmartDialEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->getContactMatches()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
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
    .line 84
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/dialer/dialpad/SmartDialEntry;>;"
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mCallback:Lcom/android/dialer/dialpad/SmartDialLoaderTask$SmartDialLoaderCallback;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mCallback:Lcom/android/dialer/dialpad/SmartDialLoaderTask$SmartDialLoaderCallback;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialLoaderTask;->mQuery:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/android/dialer/dialpad/SmartDialLoaderTask$SmartDialLoaderCallback;->setSmartDialAdapterEntries(Ljava/util/List;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method
