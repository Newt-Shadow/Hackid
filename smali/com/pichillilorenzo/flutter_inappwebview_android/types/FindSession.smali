.class public Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private highlightedResultIndex:I

.field private resultCount:I

.field private searchResultDisplayStyle:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->searchResultDisplayStyle:I

    .line 6
    .line 7
    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->resultCount:I

    .line 8
    .line 9
    iput p2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->highlightedResultIndex:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    check-cast p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;

    .line 20
    .line 21
    iget v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->resultCount:I

    .line 22
    .line 23
    iget v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->resultCount:I

    .line 24
    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    iget v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->highlightedResultIndex:I

    .line 29
    .line 30
    iget v3, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->highlightedResultIndex:I

    .line 31
    .line 32
    if-eq v2, v3, :cond_3

    .line 33
    .line 34
    return v1

    .line 35
    :cond_3
    iget v2, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->searchResultDisplayStyle:I

    .line 36
    .line 37
    iget p1, p1, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->searchResultDisplayStyle:I

    .line 38
    .line 39
    if-ne v2, p1, :cond_4

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_4
    move v0, v1

    .line 43
    :goto_0
    return v0

    .line 44
    :cond_5
    :goto_1
    return v1
.end method

.method public getHighlightedResultIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->highlightedResultIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getResultCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->resultCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getSearchResultDisplayStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->searchResultDisplayStyle:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->resultCount:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->highlightedResultIndex:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->searchResultDisplayStyle:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    return v0
.end method

.method public setHighlightedResultIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->highlightedResultIndex:I

    .line 2
    .line 3
    return-void
.end method

.method public setResultCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->resultCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setSearchResultDisplayStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->searchResultDisplayStyle:I

    .line 2
    .line 3
    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->resultCount:I

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "resultCount"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->highlightedResultIndex:I

    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "highlightedResultIndex"

    .line 24
    .line 25
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->searchResultDisplayStyle:I

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "searchResultDisplayStyle"

    .line 35
    .line 36
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FindSession{resultCount="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->resultCount:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", highlightedResultIndex="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->highlightedResultIndex:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", searchResultDisplayStyle="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/pichillilorenzo/flutter_inappwebview_android/types/FindSession;->searchResultDisplayStyle:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x7d

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
